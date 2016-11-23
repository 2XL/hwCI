Recall that a Django view is simply any function that accepts a request and returns a response. RequestFactory creates a bare-bones WSGIRequest for the first argument of a view without actually going through the Django framework (URL routing, middleware, and so on). We provide the first argument (path as a keyword) simply because you can't have a WSGIRequest without a path. The actual argument is irrelevant, unless you're using it in the course of your view logic (meaning both /solos/1/ and /solos/foo/ would have let the test pass).

Using the WSGIRequest created by RequestFactory, we can call a view like a regular function and test its effects, here setting its returned HttpResponse to a variable:
```
response = SoloDetailView.as_view()(request, pk=self.drum_solo.pk)
```
To contrast, here's a snippet from a test we wrote in the previous chapter which uses TestClient to similar effect. It's in the test_views.py file we're currently working in, if you've got your editor open:
```
response = self.client.get('/', {'instrument': 'drums'})
```
This snippet is simulating an HTTP GET request from outside the application. Therefore, if the URL doesn't exist, the response would return a 404 error. It also would have passed through Django's routing, been subjected to any active middleware, and so on.

