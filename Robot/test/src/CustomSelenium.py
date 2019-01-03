import sys

class CustomSelenium(object):

    ROBOT_LIBRARY_VERSION = 1.0

    def __init__(self):
        pass

    def get_chrome_options(self, headless):
        chrome_options=sys.modules['selenium.webdriver'].ChromeOptions()
        if(headless):
            chrome_options.add_argument('headless')
            chrome_options.add_argument('disable-gpu')
        return chrome_options
