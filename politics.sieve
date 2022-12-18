require "imap4flags";
require "envelope";
require "fileinto";

# File all political stuff into the nether.
if address :domain "from" ["redwavegop.com", "ballotpedia.org", "campaigns.rnchq.com", "contact.joebiden.com", "email.donaldjtrump.com", "dailykos.com", "decisiondeskhq.com", "donaldjtrump.com", "fightforreform.org", "gretchenwhitmer.com", "info.ballotpedia.org", "joebiden.com", "predictit.org", "retireorlose.com", "rnchq.com", "mail.saveamerica45.com", "saveamerica45.com", "win.donaldjtrump.com", "winwith45.com"]
{
  addflag "\\Seen";
  fileinto "Politics";
}
