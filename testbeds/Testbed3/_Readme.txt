Note on Editing files in this directory
=======================================

Please lock the Enterprise Architect files here before editing them and unlock them afterwards. Also do an update to make sure you have the latest version before editing.

This is because we are not using the Enterprise Architect version control capabilities but just saving the binary .eap files in the repository. This is simpler but means that only one person should edit the files at a time. If you set a lock this means other people know you are editing the file (although the lock can be broken if you appear to have just forgotten to unlock it afterwards). We don't expect heavy editing of these files but please don't keep them locked for longer than about an hour. if you find you don't have time to make all your edits at once, then please commit the file back to the seegrid repository partly done, unlock the file, and do the rest later.

Locking files with TortoiseSVN
------------------------------

If you are using TortoiseSVN, use the TortoiseSVN > Get Lock... context menu on the .eap file to lock it and include a message to say that you are editing it. After you have finished adding your notes (or you have finished an editing session and need to do something else for a while), save and close the project.

Use the SVN Commit... context menu on the .eap file and enter a brief message to say what changes you have made. By default a check box should have been selected in the commit dialog box which will release your lock on the file when you commit it. Otherwise you can release the lock with the context menu on the file.

Enterprise Architect Version
----------------------------
You will need the Enterprise Architect UML modelling software (http://www.sparxsystems.com.au/) in order to edit the files. Also it seems that since we edited the file with version 7 of EA you will also need at least v7 to open it successfully. (Confirm?)

GeoSciML Testbed3 SDI Development Model.eap
-------------------------------------------

This file is for recording Testbed 3 participants commitments.

Open the file in Enterprise Architect.

Open the Project Browser > Deployment Model > Participant Deployment Commitments.

You will see a list of folders for each of the Testbed 3 participants.

Open the BGS Components > BGS Component Diagram and maybe print a copy to use as a reference.

Open the 'your organization' Components > 'your org' Component Diagram to edit.

You will see that we are not using any sophisticated UML; we simply have a big box to represent all the BGS stuff called BGS Environment which is an <<<execution environment>> with a few component boxes inside to represent the different bits we are setting up (A WMS Server, a WFS Server etc.). Then we simply have some note boxes attached to each component describing how we plan to set up (or have set up) these components, e.g. what data we are serving, what use cases they are fulfilling etc. If you're not sure exactly how much detail to put in these boxes for your components, just write a draft and commit your changes for others to have a look.

To draw the big containing box select the Execution Environment toolbox icon in the Toolbox > Deployment Elements palette (which should be visible if you have your component diagram open. To add individual components use the Component icon. To add a note use the Toolbox > Common > Note icon ("Note" will appear in a tooltip when you have your cursor over the correct icon). When you have created a note you can connect it to the appropriate component using the New Note Link icon (a diagonal dotted line) in the top toolbar.

CGI-GeoSciML_Testbed3_Profiles.eap
----------------------------------

This file is an ongoing attempt to document the subsets of the GeoSciML model that are involved in the various Testbed 3 use cases. It has been authored mainly by Alistair Ritchie.

