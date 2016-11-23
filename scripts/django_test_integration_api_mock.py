# # Mocks improve test isolation
# If our unit test is dependent on an external system working, doesn't that mean our test is not testing a single unit? And if the external system fails, is it really fair to fail the test of our code? A mock guarantees that we get the response we need from the outside code, or if need be, the API error we need to handle.
# 
# # External calls slow tests down
# We already know that a hallmark of a good test suite is the speed at which it runs. Calls out over the Internet can add hundreds of milliseconds to a single unit test. Mocking takes care of the latency.
# 
# # Mocks help us adhere to API rate limits
# Most Internet APIs enforce some type of threshold or rate limiting. In our case, MB asks that we not hit the API anymore than once a second. Mocks help us play nice with our API providers by not sending out bot-like blasts of calls with no end-user benefit.
# 


from unittest.mock import patch


# solos/tests/test_models.py

class Solo:
    pass


@patch('musicbrainzngs.search_artists')
def test_get_artist_tracks_from_musicbrainz(self, mock_mb_search_artists):
    """
    Test that we can make Solos from the MusicBrainz API
    """
    created_solos = Solo.get_artist_tracks_from_musicbrainz('Jaco Pastorius')

    mock_mb_search_artists.assert_called_with('Jaco Pastorius')
    
    self.assertEqual(len(created_solos), 2)
    self.assertEqual(created_solos[0].artist,
                     'Jaco Pastorius')
    self.assertEqual(created_solos[1].track.name,
                     'Donna Lee')
