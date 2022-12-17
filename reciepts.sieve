require "envelope";
require "fileinto";

# Move all shopping and deals and advertisements into the proper shopping folder.
if address "from" ["no-reply@doordash.com", "dashpass.member.experience@doordash.com"]
{
  fileinto "Reciepts";
}
