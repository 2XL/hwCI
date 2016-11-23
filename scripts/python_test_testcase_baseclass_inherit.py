# this particular solo.
import pdb;

from django.test import RequestFactory, TestCase

pdb.set_trace()


class Solo(object):
    pass


class SolosBaseTestCase(TestCase):
    """
    Declare the common steps here
    """

    def setUp(self):
        self.factory = RequestFactory()

    @classmethod
    def setUpClass(cls):
        super(SolosBaseTestCase, cls).setUpClass()
        cls.drum_solo = Solo.objects.create(instrument='drums', artist='Rich',
                                            track='Bugle Call Rag')
        cls.sax_solo = Solo.objects.create(instrument='saxophone',
                                           artist='Coltrane', track='Mr. PC')


class IndexViewTestCase(SolosBaseTestCase):
    """
    Each class should should contain atleast a test and override setUp if needed.
    """

    def test_index_view_basic(self):
        pass
