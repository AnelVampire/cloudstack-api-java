API: http://download.cloud.com/releases/2.2.0/api_2.2.12/TOC_Global_Admin.html

To checkout the code: hg clone https://code.google.com/p/cloudstack-api-java/

A prebuilt jar is in the downloads area.  It was built against Jakarta Commons HTTPClient 3.1 (fedora package jakarta-commons-httpclient) and Apache's xml commons 1.4.01 (fedora package xml-commons-apis).

There are currently three CLI examples, but the library contains stubs for all the user API calls.  Using XPath to parse the results is recommended.