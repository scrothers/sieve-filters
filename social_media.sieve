require "imap4flags";
require "envelope";
require "fileinto";

# File all emails from social media accounts into their appropriate folders.
if address :domain "from" ["facebook.com", "facebookmail.com", "reddit.com", "redditmail.com", "twitter.com"]
{
  addflag "\\Seen";

  if address :domain "from" ["facebook.com", "facebookmail.com"]
  {
    fileinto "Social Media.Facebook";
  }

  if address :domain "from" ["reddit.com", "redditmail.com"]
  {
    fileinto "Social Media.Reddit";
  }
}