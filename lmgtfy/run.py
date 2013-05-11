from lmgtfy import Lmgtfy
import sys


def google_it(query):
    googler = Lmgtfy()
    print "Lmgtfy url:", googler.lmgtfy_url(query)
    try:
        print "Short url :", googler.short_url(query)
    except:
        print "No Internet connection"


def command_line_runner():
    if len(sys.argv) == 1:
        sys.exit("Error: too few arguments")
    google_it(sys.argv[1:])


if __name__ == "__main__":
    command_line_runner()
