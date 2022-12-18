require "envelope";
require "fileinto";

# File away the Nextdoor application.
if address "from" ["nerdwallet_at_email_nerdwallet_com_idjt5tymm2_964d9ca6@privaterelay.appleid.com"]
{
  fileinto "Shopping";
}

# Move all shopping and deals and advertisements into the proper shopping folder.
if address :domain "from" ["e.fitbit.com", "e.godiva.com", "b.cabelas.com", "e-mail.gopro.com", "ea.tractorsupply.com", "members.wayfair.com", "email.aarons.com", "mail.zillow.com", "p.touchofmodern.com", "emails.monoprice.com", "em.harborfreight.com", "emailinfo.buffalowildwings.com", "email.bedbathandbeyond.com", "littlecaesars.fbmta.com", "shop.meijer.com", "e2.bathandbodyworks.com", "comms.activision.com", "engage.windows.com", "microcenterinsider.com", "menard.messages1.com", "promo.newegg.com", "mailer.humblebundle.com"]
{
  fileinto "Shopping";
}

# Direct emails for stores without specific domains.
if address "from" ["shop@marketing.id.me", "bestbuy@email.bestbuy.com", "offers@wish.com", "no-reply@electrictobacconist.com", "sam@huntakiller.com", "bn@bluenile.com", "store-news@amazon.com", "support@imperfectproduce.com", "hello@bumpboxes.com", "costco@online.costco.com", "reply@notice.comcastbusiness.com", "info@hsastore.com", "info@fsastore.com", "funships@carnivalcruiselineemail.com", "store-news@amazon.com", "noreply@classicfirearms.com", "member@from.k1speed.com", "email@info.jewlr.com", "promos-coming@your-way.bk.com", "crunchclub@jetspizza.com"]
{
  fileinto "Shopping";
}