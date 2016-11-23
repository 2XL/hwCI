# this particular solo.
import pdb;

from django.test import RequestFactory, TestCase

pdb.set_trace()


class Solo(object):
    pass


class IndexViewTestCase(TestCase):
    def setUp(self):
        """
        This is called each time a test is run
        :return:
        """
        self.factory = RequestFactory()

    @classmethod
    def setUpClass(cls):
        """
        This is called once at the beginning
        :return:
        """
        super(IndexViewTestCase,cls).setUpClass()
        cls.drum_solo = Solo.objects.create(
            instrument='drums',
            artist='Rich',
            track='Bugle Call Rag'
        )
        cls.sax_solo = Solo.objects.create(
            instrument='saxophone',
            artist='Coltrane',
            track='Mr. PC'
        )

    def test_try_feature_here(self):
        self.sax_solo
        pass
