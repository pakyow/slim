Pakyow::App.define do
  configure :test do
    presenter.view_stores[:default] = "test/support/views"
  end
end
