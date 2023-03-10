require "imap4flags";
require "envelope";
require "fileinto";

# Sort and file misc social media or social news updates.
if address "from" ["people@mail.people.com", "reply_at_rs_email_nextdoor_com_9rmjkfbzqz_94c3cfc9@privaterelay.appleid.com"]
{
  addflag "\\Seen";
  fileinto "Social Media";
}

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

  if address :domain "from" ["twitter.com"]
  {
    fileinto "Social Media.Twitter";
  }
}