require "test_helper"

class Redcarpet::Render::HTMLLazyImgTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Redcarpet::Render::HTMLLazyImg::VERSION
  end

  def test_add_loding_lazy_attribute_to_img_tag
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTMLLazyImg::Lazy)

    assert_match(
      '<img loading="lazy" src="https://example.com/img.png" alt="example image" />',
      markdown.render('![example image](https://example.com/img.png)')
    )
  end

  def test_add_loding_auto_attribute_to_img_tag
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTMLLazyImg::Auto)

    assert_match(
      '<img loading="auto" src="https://example.com/img.png" alt="example image" />',
      markdown.render('![example image](https://example.com/img.png)')
    )
  end

  def test_add_loding_eager_attribute_to_img_tag
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTMLLazyImg::Eager)

    assert_match(
      '<img loading="eager" src="https://example.com/img.png" alt="example image" />',
      markdown.render('![example image](https://example.com/img.png)')
    )
  end
end
