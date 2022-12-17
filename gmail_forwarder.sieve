require "imap4flags";
require "envelope";
require "fileinto";

# File all emails forwarded from my Gmail into the folder, and label.
if header "X-Forwarded-To" "gmail-forward@*"{
  fileinto "Gmail";
  fileinto "Gmail Forwarded";
}