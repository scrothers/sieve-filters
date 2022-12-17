require "imap4flags";
require "envelope";
require "fileinto";

# Filter all private relay email from Apple.
if anyof(address :domain "from" "privaterelay.appleid.com", address :domain "to" "privaterelay.appleid.com")
{
  fileinto "Apple Masked";
}
