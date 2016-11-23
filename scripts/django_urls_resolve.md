Testing URLs
Let's get our view hooked up to a URL. Add this familiar looking test to solos/tests/test_urls.py:
```
    def test_solo_details_url(self):
        """
        Test that the URL for SoloDetail resolves to the
        correct view function
        """
        solo_detail = resolve('/solos/1/')

        self.assertEqual(
            solo_detail.func.__name__,
            'SoloDetailView'
        )
        self.assertEqual(solo_detail.kwargs['pk'], '1')
```
A new wrinkle here: we need to test the __name__ of the func attribute on solo_detail to make sure that it's the string version of our CBV's name. as_view(), which we use in urls.py, returns a function for the URL, hence solo_detail.func is a pointer to a function. solo_detail.func and SoloDetailView.as_view() would not be equal, as they'd be different pointers to the same function.

**motivation**
1. I'm probably the worst regex developer on the planet, and I sleep better knowing mine are tested.
2. If I'm using RequestFactory to isolate my view tests, nothing is testing my URL rules if I don't write a specific URL test.11