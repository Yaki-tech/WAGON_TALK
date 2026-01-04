module LocaleHelper
  def locale_toggle_button(css_class: '')
    next_locale = I18n.locale == :fr ? :en : :fr
    locale_text = next_locale == :en ? 'EN' : 'FR'

    button_to update_locale_path(next_locale),
              method: :patch,
              class: "locale-toggle #{css_class}",
              id: 'locale-toggle',
              title: "Switch to #{next_locale.to_s.upcase}" do
      locale_text
    end
  end
end
