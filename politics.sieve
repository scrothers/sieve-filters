require "imap4flags";
require "envelope";
require "fileinto";

# File all political stuff into the nether.
if address :domain "from" ["ballotpedia.org", "contact.joebiden.com", "email.donaldjtrump.com", "dailykos.com", "decisiondeskhq.com", "donaldjtrump.com", "fightforreform.org", "gretchenwhitmer.com", "info.ballotpedia.org", "joebiden.com", "predictit.org", "retireorlose.com", "rnchq.com", "saveamerica45.com", "winwith45.com"]
{
  addflag "\\Seen";
  fileinto "Politics";
}
