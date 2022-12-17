require "envelope";
require "fileinto";

# Move all support ticket emails to a specific folder.
if address "from" ["support@protonmail.zendesk.com"]
{
  fileinto "Support Tickets";
}
