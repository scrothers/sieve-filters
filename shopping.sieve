require "imap4flags";
require "envelope";
require "fileinto";

# Move all shopping and deals and advertisements into the proper shopping folder.
if address :domain "from" ["email.bedbathandbeyond.com", "littlecaesars.fbmta.com", "shop.meijer.com", "e2.bathandbodyworks.com", "comms.activision.com", "engage.windows.com", "microcenterinsider.com", "menard.messages1.com", "promo.newegg.com", "mailer.humblebundle.com"]
{
  fileinto "Shopping";
}

# Direct emails for stores without specific domains.
if address "from" ["hello@bumpboxes.com", "costco@online.costco.com", "reply@notice.comcastbusiness.com", "info@hsastore.com", "info@fsastore.com", "funships@carnivalcruiselineemail.com", "store-news@amazon.com", "noreply@classicfirearms.com", "member@from.k1speed.com", "email@info.jewlr.com", "promos-coming@your-way.bk.com", "crunchclub@jetspizza.com"]
{
  fileinto "Shopping";
}