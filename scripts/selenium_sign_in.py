from django.contrib.auth import get_user_model
# ...


def setUp(self):
    # ...
    self.admin_user = get_user_model().objects.create_superuser(
        username='bill',
        email='bill@example.com',
        password='password'
    )


# ...
def test_staff_can_add_content(self):
    # ...
    # He enters his username and password and submits the
    # form to log in
    login_form = self.browser.find_element_by_id(
        'login-form')
    login_form.find_element_by_name('username'). \
        send_keys('bill')

    login_form.find_element_by_name('password'). \
        send_keys('password')
    login_form.find_element_by_css_selector(
        '.submit-row input').click()
    self.fail('Incomplete Test')
