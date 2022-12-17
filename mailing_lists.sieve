require "imap4flags";
require "envelope";
require "fileinto";

# File all emails from various mailman servers into the mailing lists folder.
if header :matches "X-Mailman-Version" "*"{
  addflag "\\Seen";
  fileinto "Mailing Lists";
}