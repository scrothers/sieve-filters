require "envelope";
require "fileinto";

# Store all source code repository emails into the "Development" folder.
if address :domain "from" ["github.com", "gitlab.com"]
{
  fileinto "Development";
}
