require "imap4flags";
require "envelope";
require "fileinto";

# Apple Services
if anyof(address :domain "from" ["apple.com"], address "from" ["no_reply@email.apple.com"])
{
  fileinto "Apple";
}

# Google Services
if anyof(address :domain "from" ["google.com"])
{
  fileinto "Google";
}

# Streaming Services
if address :domain "from" ["fandango.com", "movies.fandango.com", "email.redbox.com", "email.vudu.com", "mail.disneyplus.com", "disneyplus.com", "hulu.com", "hulumail.com", "mailer.netflix.com", "netflix.com"]
{
  fileinto "Streaming";
}