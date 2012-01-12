require "tilt/template"
require "execjs"
require 'sprockets'

module EmberJS
  module Rails
    # Tilt template renderer for precompiling Handlebars templates and storing
    # them in the Ember.TEMPLATES object.
    class EmberJsTemplate < Tilt::Template
      def self.default_mime_type
        "application/javascript"
      end

      def initialize_engine; end

      def prepare; end

      def evaluate( scope, locals, &block )
        name = scope.logical_path.sub( /^templates\//, "" )
        precompiled_js = precompile( data )
        "Ember.TEMPLATES[\"#{name}\"] = Handlebars.template(#{precompiled_js});\n"
      end

      protected

      def precompile( template )
        runtime.call( "Handlebars.precompile", template )
      end

      def runtime
        @runtime ||= ExecJS.compile( handlebars_js )
      end

      def handlebars_js
        path = File.join( File.dirname(__FILE__), "..", "..", "..", "vendor", "handlebars", "handlebars.js" )
        File.read( path )
      end
    end

    Sprockets.register_engine '.handlebars', EmberJsTemplate
    Sprockets.register_engine '.hjs', EmberJsTemplate
    Sprockets.register_engine '.hb', EmberJsTemplate
  end
end
