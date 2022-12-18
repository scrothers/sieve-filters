require "envelope";
require "fileinto";

# Move all shopping and deals and advertisements into the proper shopping folder.
if address "from" ["shipment-tracking@amazon.com", "auto-confirm@amazon.com", "no-reply@doordash.com", "dashpass.member.experience@doordash.com", "familysafety@microsoft.com"]
{
  fileinto "Reciepts";
}
