package net.datapipe.CloudStack;

import org.w3c.dom.Document;

public class listTemplates {
  public static void main(String[] args) throws Exception {
    String filter = "community";
    if(args.length > 0) {
      filter = args[0];
    }
    CloudStack client = CLI.factory();
    Document template_list_doc = client.listTemplates(filter,null);

    String elements[] = {"id", "displaytext", "name", "hypervisor", "isready", "ispublic"};

    CLI.printDocument(template_list_doc, "//template", elements);
  }
}
