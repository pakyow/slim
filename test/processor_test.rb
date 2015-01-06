require_relative 'support/helper'

class ProcessorTest < MiniTest::Test
  def setup
    @view_store = :test
    Pakyow::App.stage(:test)
  end

  def test_that_view_is_processed
    v = Pakyow.app.presenter.store.composer('/')
    assert_equal(
      File.read('test/support/processed.html').gsub("\n", ''),
      v.container(:default).to_html
    )
  end
end
