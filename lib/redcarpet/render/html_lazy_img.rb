require 'redcarpet'
require_relative 'html_lazy_img/version'

module Redcarpet
  module Render
    module HTMLLazyImg
      class Base < ::Redcarpet::Render::HTML
        def image(*)
          raise NotImplementedError
        end

        private

        def image_tag_with_loading_attr(loading:, link:, alt_text:)
          "<img loading=\"#{loading}\" src=\"#{link}\" alt=\"#{alt_text}\" />"
        end
      end

      class Lazy < Base
        def image(link, _title, alt_text)
          image_tag_with_loading_attr(loading: 'lazy', link: link, alt_text: alt_text)
        end
      end

      class Auto < Base
        def image(link, _title, alt_text)
          image_tag_with_loading_attr(loading: 'auto', link: link, alt_text: alt_text)
        end
      end

      class Eager < Base
        def image(link, _title, alt_text)
          image_tag_with_loading_attr(loading: 'eager', link: link, alt_text: alt_text)
        end
      end
    end
  end
end
