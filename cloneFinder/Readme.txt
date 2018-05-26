
CloneSpy v3.4
~~~~~~~~~~~~~

Application for finding and deleting duplicate files.
For Windows XP, Vista, 7, 8, 8.1, and 10.


Why was CloneSpy written?
~~~~~~~~~~~~~~~~~~~~~~~~~

Do you often download files from the Internet? Is your hard drive crowded with
these files? Have you ever asked yourself which files you have downloaded more
than once? Perhaps you have burned files to a DVD and retrieved them again? Do
you want to find these files and eliminate the duplicates? Maybe you want to
find duplicate files without checking your entire collection of backup DVDs
every time? Then CloneSpy is the right tool for you! 


What can CloneSpy do?
~~~~~~~~~~~~~~~~~~~~~

CloneSpy can help you free up hard drive space by detecting and removing
duplicate files. Duplicate files have exactly the same contents regardless of
their name, date, time and location. Also, CloneSpy is able to find files that
are not exactly identical, but have the same file name. Perhaps you have
different versions of a file and you want to find all of them and remove the
older versions. CloneSpy can also find zero length files. These are files that
have no content.

With CloneSpy you can process files which

- are duplicates
- are duplicates having the same file name, title, or extension
- have the same file name or title
- have the same file name or title, and similar size
- are zero bytes long

CloneSpy offers you a complete mechanism for determining which files should be
removed. It is also possible to leave this decision up to the individual user.

CloneSpy can handle equal files by

- deleting redundant files
- moving redundant files to a specific folder
- exporting a list of all equal files without removing any files
- deferring file operations on redundant files to a batch file where you can
  apply arbitrary file operations
- replacing redundant files with shortcuts or hard links (NTFS) to retained
  files

With CloneSpy you can build checksum files from files on DVDs (or even on hard
drives, etc.) and use them to check whether these files already exist on your
system. The checksum files will prevent you from having to play DJ every time
you search for duplicates!


Usage notes
~~~~~~~~~~~

After starting CloneSpy the first time please take a look at the help file.

If you face any problems please view our FAQ section at www.clonespy.com.


Uninstall
~~~~~~~~~

You did not install CloneSpy v3.4 to your system. Therefore no uninstall
process has to be run. Simply delete all CloneSpy files in this folder.


Release History
~~~~~~~~~~~~~~~

Version 3.4   (30.08.2017)

- Modified: Reimplemented the pools and consolidated related feedback messages
            to resolve several visualization issues
- Modified: For all Windows versions prior to Windows 10, DPI scaling is now
            performed by the system to solve icon scaling issues. For Windows
            10, you need to adapt the program's DPI scaling behavior if icons
            are displayed too small (see our FAQ on www.clonespy.com)
- Fixed: Added an explanation for the formerly unknown error code 53


Version 3.34  (26.03.2017)

- Added: The update checker can now download and install the latest version
         (see the Menu bar of the Main window)
- Added: A new option remembers size and position of the Main window (see
         Priority page of the Options window)
- Added: A new option remembers size and position of the Result presentation
         windows (see Priority page of the Options window)
- Added: File properties can now be viewed via the context menu of the Result
         presentation windows
- Added: The View CSC-file window now has a search function
- Fixed: When scanning against CSC-files, the Single duplicates window now
         shows all equal files found (regression since v3.2)
- Fixed: The pattern matcher now recognizes matching string even if the
         pattern ends with an asterisk


Version 3.33  (22.01.2017)

- Added: When moving files to a relative path, the path can now be resolved
         relative to the respective file (see Deletion page of the Options
         window)
- Added: A checksum is now only stored in the database if the corresponding
         file is larger than a configurable value (see Database page of the
         Options window)
- Modified: The encoding "OEM" is now the default setting for batch files
- Fixed: Eliminated a bug where an installed version was detected as portable
         version
- Fixed: Added an explanation for the formerly unknown error code 17


Version 3.32  (31.12.2016)

- Added: The new Extensions page in the Options window allows to specify file
         extensions that are different but should be considered as equal. This
         option is enabled by default
- Modified: The scan progress window can now be closed via the close button in
            its title bar after a scan is finished
- Fixed: Corrected an overflow of the "Scanning for duplicates" progress bar
         in the scan progress window (regression since v3.31)
- Fixed: If a folder is added to a pool which contains many sub-folders of
         that folder, then the warning message no longer overflows
- Fixed: The uninstaller now works properly for 32-bit Windows


Version 3.31  (28.10.2016)

- Added: When exporting a list of equal files (see Export tab of the Options
         window) or a CSC-file (see the Export CSC-file window), numbers can
         now be separated into digit groups
- Modified: File sizes in the log file are now separated into digit groups
- Modified: When searching for duplicates, the progress bars in the scan
            progress window now advance more linear on average data
- Fixed: The context help now works for the drop-down boxes in the Main window
- Fixed: When exporting a list of equal files with aligned columns (see Export
         tab of the Options window), trailing spaces are no longer generated
- Fixed: Copying Cyrillic characters to the clipboard no longer fails


Version 3.3   (27.08.2016)

- Added: The Main window is now resizable
- Added: Added new search options to the Main window
- Modified: Replaced some radio buttons with drop-down lists to make room for
            the new search options
- Modified: The checksum database journal file is now kept permanently for
            performance reasons
- Modified: Changed the order of buttons in several dialogs to be consistent
            with the standard button order in Windows
- Modified: Moved all context help buttons from the window title bars to the
            lower right corner of the corresponding dialogs
- Modified: The Size of main CloneSpy window option now only changes the Main
            window size at start-up (see Priority page of the Options window)
- Modified: In the default format for exporting lists of equal files, file
            time now appears before file path
- Fixed: The Copy/Move Dialog Box on Windows 8 and higher is now suppressed


Version 3.24  (07.05.2016)

- Added: After CloneSpy has deleted a file, it can now automatically remove
         additional files specified in the Options from an otherwise empty
         folder (see Deletion page of the Options window)
- Added: The new command line option -u can be used to disable the automatic
         check for new versions on program start
- Modified: The default format to explore files now highlights the respective
            file in the File Explorer (see Report page of the Options window)
- Modified: Improved database error messages
- Fixed: Some file dialogs did not remember the last visited folder correctly
- Fixed: Error messages now correctly reflect that CloneSpy can only support
         file paths up to a length of 258 characters
- Fixed: In the All duplicates window files can now be marked based on their
         path length when searching for files with the same name
- Fixed: When merging CSC-files now all duplicate entries are removed


Version 3.23  (05.01.2016)

- Modified: Exchanged "+" by "&" in the Main window to clarify the meaning of
            the "Search for" options
- Fixed: The 64-bit version no longer crashes when clicking the list header in
         the Zero length files window or the Single duplicates window
- Fixed: CloneSpy no longer crashes when scanning long paths on network drives
- Fixed: Added an explanation for the formerly unknown error code 183


Version 3.22  (22.08.2015)

- Fixed: CloneSpy no longer fails to move files to the recycle bin or another
         folder on Windows XP (regression since v3.21)


Version 3.21  (27.06.2015)

- Added: In two-pool mode, the colors that highlight files from pool 1 and 2
         in the Result presentation windows can now be changed by a
         right-click on the corresponding legend
- Added: More dialogs can now be configured to never show up again
- Fixed: Unnecessary system messages are no longer shown if deletion of files
         fails
- Fixed: Added an explanation for the formerly unknown error code 206


Version 3.2   (31.03.2015)

- Added: The installer now allows you to select between a 32-bit and a 64-bit
         version of CloneSpy
- Added: If you push the "Delete all marked files" button in the Zero length
         files window or Single duplicates window without first marking any
         file then an explanation is given on how to mark files
- Modified: Optimized the memory management so that now more of the available
            memory can be used
- Modified: Optimized the structure of the checksum database leading to the
            effect that your database needs to be rebuilt (previously cached
            checksums will be recreated)
- Modified: If you scan a large number of files then the percentages in the
            scan progress window now have decimal places
- Modified: Opening and closing a large number of categories in the All
            duplicates window are now faster
- Modified: Marking a large number of files in the All duplicates window is
            now faster
- Modified: The upper limit for the size of scanned files is now deactivated
            by default (see Time + Size page of the Options window)
- Fixed: If you have a large checksum database then CloneSpy no longer freezes
         for some time when you open the Options window
- Fixed: The Options window no longer freezes while the checksum database is
         being cleaned up (see Database page of the Options window)
- Fixed: In the Options, if "Make new file" or "Replace file" is selected then
         the corresponding file name may no longer be erased
- Fixed: The Single duplicates window no longer shows files that were already
         deleted manually by the user during the scan
- Fixed: If CloneSpy is ran from the installer then it now runs with user
         privileges
- Fixed: Corrected the original file name in the version information of the
         installer


Version 3.13  (28.06.2014)

- Fixed: Directory symbolic links whose target starts immediately with a
         directory are now recognized
- Fixed: Directory symbolic links whose target starts with a backslash are now
         resolved correctly
- Fixed: The View CSC-file window no longer confuses properties of files with
         the same path
- Fixed: The controls in the View CSC-file window is now wide enough to
	 display the file properties
- Fixed: The context help now works correctly for the Options button in the
         Main window


Version 3.12  (26.04.2014)

- Added: Equal files can now be explored or marked by an external program (see
         Report tab of Options window)
- Added: The new pattern %P of the export list format (see Export tab of the
         Options window) and the CSC-file export format (see the Export
         CSC-file window) allow for exporting the source pool number
- Modified: Moved "Execute selected file" function of the Result presentation
            windows to the context menu of the list of equal files
- Fixed: The "Override delete selection" indication in the Main window is now
         only shown if the Action is set to "automatically delete"
- Fixed: When a CSC-file is created then only relevant settings in effect are
         now written to the log file
- Fixed: Hard links can be created again on NTFS drives for Windows XP and
         Windows Vista (regression since v3.0)
- Fixed: The silent install command line option /ALLUSERSHORTCUT works now
         properly


Version 3.11  (01.03.2014)

- Added: The system can now be automatically shut down after a scan is done
- Added: System sleep can now be prevented while scanning (see Priority page
         of the Options window)
- Added: Some dialogs can now be configured to never show up again
- Modified: Mitigated database access problems if several instances of
            CloneSpy are run in parallel (although not recommended)
- Fixed: CloneSpy no longer asks about saving settings when the user selects
         to automatically exit the program after scanning
- Fixed: CloneSpy can no longer be configured to exit automatically if zero
         length files should be presented to the user
- Fixed: If a folder in an inactive pool is also added into the other pool
         then this conflict is now resolved silently
- Fixed: Eliminated a bug that caused a crash while scanning or aborting a
         scan which happened in rare cases


Version 3.1   (25.01.2014)

- Added: Integrated a database for caching checksums to speed up scanning (see
         Database page of the Options window)
- Added: All paths written into a batch file can now be converted into 8.3
         form (see Batch page of the Options window)
- Added: Files generated by CloneSpy can now be encoded in UTF-8
- Added: CloneSpy now warns on missing and spurious command line parameters
- Added: Before a setting files is upgraded to the current version, the user
         now has the option to create a backup
- Added: The installer now generates a warning if the install path contains a
         hash character because it will block access to the help file
- Fixed: Added an explanation for the formerly unknown error code 80


Version 3.04  (12.10.2013)

- Modified: Portable and installed versions can now be run in parallel
- Modified: The portable version now initializes paths in the Options window
            relative to the CloneSpy executable


Version 3.03  (21.09.2013)

- Fixed: CloneSpy can now represent invalid file dates correctly
- Fixed: CloneSpy now supports daylight saving time when displaying file dates
- Fixed: CloneSpy no longer crashes if a date in the distant future is chosen
         in the calendar on the Time + Size page of the Options window
- Fixed: The list of equal files in each Result presentation window can now be
         sorted by the entries in the CSC-file column


Version 3.02  (31.08.2013)

- Fixed: CloneSpy now correctly resolves relative symbolic links
- Fixed: CloneSpy no longer resolves links on a network drive
- Fixed: CloneSpy no longer rejects mapped network drives


Version 3.01  (10.08.2013)

- Fixed: CloneSpy no longer crashes when a file with invalid date is acquired
- Fixed: Corrected the version information of the CloneSpy executable
- Fixed: Completed information in Windows' Add/Remove Programs
- Fixed: Corrected some minor visual glitches


Version 3.0   (27.07.2013)

- Added: Reparse points and substituted paths can now be resolved to their
         true paths due to use of new compiler and libraries:
         - A folder will no longer be considered more than once if it is
           found several times due to reparse points or substituted paths
         - When hard links have to be created, a scan is only started if the
           true paths of all folders in the pool(s) are on the same drive
         - When hard links have to be created, a sub-folder is ignored if
           its true path is on a different drive
- Modified: Creation of hard links no longer requires administrator rights
- Modified: Reduced memory consumption when deleting files to the recycle bin
- Modified: Reduced memory consumption when merging CSC-files
- Modified: Windows 2000 is no longer supported
- Fixed: Deactivated controls on the Time + Size page no longer complain about
         missing input
- Fixed: Deletion of hard links no longer affects the calculation of freed
         space
- Fixed: Corrected several minor visual glitches


Version 2.7   (15.12.2012)

- Added: The Main window now has an Options button
- Added: Folders entered to a pool can now be explored via the context menu
- Added: The summary of a log file now also shows the number of categories of
         equal files found
- Added: The scan progress window now also shows the number of categories of
         equal files found
- Added: After a batch file is created or a list file is exported, the scan
         progress window now shows a button to view that file
- Added: Files shown in the Result presentation windows can now be executed by
         pressing the Return key
- Added: Adding all sibling folders to a pool in the Add folder window can now
         be aborted if errors occur
- Added: The new command line option -i can now be used to ignore errors while
         scanning and to exit automatically afterwards
- Added: The installer now offers command line options for silent installation
         (specify "/?" on the installer command line for usage details)
- Modified: The default for characters that cannot be represented in files
            with OEM encoding is now the same as for ANSI encoding
- Modified: The default for characters that cannot be represented in batch
            files with ANSI or OEM encoding can now be changed (see Batch page
            of the Options window)
- Modified: When adding file masks in the Files or Names page of the Options
            window, you can now browse for or paste multiple file names
- Modified: Multiple file paths can now be pasted to the Manual input control
            in the Add folder window
- Modified: Windows NT4.0 is no longer supported
- Fixed: If a hard link cannot be created then CloneSpy tries to restore the
         original file
- Fixed: After changing the encoding for batch files or export lists, a new
         file can now be created without changing the corresponding file path
- Fixed: When searching for files with same name, the Single duplicates window
         now allows to preselect files based on their folder/path length
- Fixed: When searching for files with same name, the Action frame of the Main
         window now allows to automatically delete files based on their
         folder/path length
- Fixed: The default batch file format now also supports hidden file deletion
         (see Batch page of the Options window)
- Fixed: When exporting a list of equal files, the correct encoding is now
         applied (regression since v2.62)
- Fixed: When browsing for a file pattern from the context menu of the All
         duplicates window, the correct dialog is now shown
- Fixed: Added an explanation for the formerly unknown error code 112


Version 2.63  (28.04.2012)

- Added: Reparse points can now be excluded from a scan (see Folders tab of
         the Options window)
- Modified: File access error message boxes now remind the user of potentially
            missing administrator rights for Windows Vista and higher
- Modified: When exporting a list of equal files and no equal files are found
            then this is now stated in the exported list file
- Fixed: When searching for files with same name, the context menu of the list
         box in the All duplicates window now contains options for retaining
         files based on folder/path length
- Fixed: The installer now shows the correct license agreement
- Fixed: Added an explanation for the formerly unknown error code 124


Version 2.62  (24.09.2011)

- Added: Exported lists of duplicate files can now be configured to contain a
         header and a summary (see Export page of the Options window)
- Added: Exported CSC-files can now be configured to contain a header (see the
         Export CSC-file window)
- Modified: Redesigned the Options window from tab-based to page-based view in
            order to solve scaling issues with different font sizes
- Modified: The options for creating batch files and for exporting lists of
            duplicate files are now separated into two individual option pages
- Modified: If started for the very first time CloneSpy now asks for saving
            the settings on program exit
- Modified: Floating-point numbers are now represented according to the user's
            preferred native locale
- Modified: Improved the error message which is shown when hard links cannot
            be created due to insufficient rights of the user running CloneSpy
- Modified: Hard links are no longer replaced by new hard links
- Fixed: The number of hard links that can be created is no longer limited
- Fixed: The command line options for changing the setting of the Mode frame
         in the Main window no longer cause a crash (regression since v2.6)


Version 2.61  (25.06.2011)

- Added: The vertical size of the Main window can now be reduced (see Priority
         tab of the Options window)
- Modified: Improved the error message which is shown when a file cannot be
            deleted due to insufficient rights of the user running CloneSpy
- Modified: The folder "$Recycle.Bin" is now ignored by the default settings
            (see Folders tab of the Options window)
- Fixed: Enlarged the fields showing the numbers of open and closed categories
         in the All duplicates window to hold more than four digits
- Fixed: Improved the scaling of the tab pages in the Options window for all
         font sizes on Windows Vista and Windows 7
- Fixed: When resetting all settings then the most-recently-used lists of the
         pools are now erased


Version 2.6   (29.01.2011)

- Added: Zero length files can now be handled as normal files (see Time + Size
         tab of the Option window)
- Added: Checksums can now be exported by using %c in the export list format
         (see Export tab of the Options window)
- Added: Folders in a pool can now be explored in the Add folder window
- Added: Default command line parameters can now be specified in the registry
- Modified: The tree view of the View CSC-file window is now generated faster
- Modified: The uninstaller now removes CloneSpy.ini for better cleanup
- Modified: If errors occur while all sibling folders are added to a pool in
            the Add folder window then more precise error messages are shown
- Modified: If a settings file cannot be loaded at startup then a more precise
            error message is shown
- Modified: The symbol used as digit group separator for large numbers is now
            taken from the locale settings of the user
- Modified: Windows 98se and Windows ME are no longer supported (regression
            since v2.5)
- Fixed: The check boxes in the View CSC-file window are now shown in disabled
         state because they cannot be modified by the user
- Fixed: If a settings file could not be loaded at startup then the title of
         the Main window no longer says the opposite
- Fixed: The context menu in the Single duplicates window no longer shows
         wrong entries
- Fixed: Invalid file errors no longer occur when making a CSC-file from the
         second pool while logging is enabled (regression since v2.51)
- Fixed: A CSC-file no longer includes an entry about itself, which occurred
         when the CSC-file was stored in the scanned folder


Version 2.52  (28.08.2010)

- Added: The list box of each Result presentation window can now be configured
         to show the name of scanned CSC-files via the context menu
- Added: The list box of the All duplicates window now has additional entries
         in its context menu for unmarking files in a more advanced way
- Added: Categories in the All duplicates window can now be opened and closed
         based on whether they contain marked files or not
- Added: Directory deletion commands are now written to batch file if empty
         folders should be removed (see Deletion tab of the Options window)
- Modified: Memory management is slightly improved
- Fixed: The "Stop scanning" button in the Zero length files window is now
         working again (regression since v2.31)


Version 2.51  (10.04.2010)

- Added: The list boxes in the Result presentation windows now have a context
         menu offering copy-to-clipboard operations and grid lines
- Added: The list box of the All duplicates window has additional entries in
         its context menu offering more advanced file marking and statistics
- Added: In the Add folder window it can now be configured whether the last
         visited folder in the tree view should be remembered for both pools
- Added: The Add folder window now has a "Remove selected folder from list"
         button that removes directory paths from the pool list box
- Added: The user now receives feedback if errors occur while files are being
         acquired (can be disabled in the Report tab of the Options window)
- Added: The settings associated with a scan can now be written to the log
         file (see Logging tab of the Options window)
- Added: CloneSpy can now be configured to play a sound when equal files are
         immediately displayed (see Priority tab of the Options window)
- Added: File entries in the Result presentation windows can now be marked by
         pressing the Ctrl key plus the left mouse button
- Added: The installer now allows you to change the folder in the start menu
         or even to create a new folder
- Modified: The Options window now remembers the last visited tab until the
            next program start
- Modified: The All duplicates window can now be closed with the close button
            in the title bar
- Modified: Improved wording of the header written to the log file
- Modified: Improved readability of numbers in the log file summary
- Fixed: The option "Close categories above selected item" no longer affects
         the currently highlighted category in the All duplicates window
- Fixed: Controls in the Logging tab of the Options window are now correctly
         enabled/disabled if logging is enabled/disabled
- Fixed: Corrected the log file entry for deleted or moved zero length files
         for the case that deletion of equal files is deferred to batch file
- Fixed: After clicking one of the "Make CSC" buttons in the Main window
         unrelated error messages are no longer shown
- Fixed: Added an explanation for the formerly unknown error code 19


Version 2.5   (16.12.2009) 

- Added: CloneSpy now fully supports Unicode
- Added: Output files can now be encoded in ANSI, OEM, or Unicode
- Added: In two-pool mode you can now click on the legend of the Result
         presentation windows to mark all files of the corresponding pool
- Modified: The Add folder window now remembers the last visited folder for
            each pool individually
- Fixed: CloneSpy no longer fails on finding all equal files when searching
         for duplicates with the same name which happened in rare cases
- Fixed: CloneSpy now handles files with sizes larger than 2 GB correctly
- Fixed: When exporting file lists the %f column now gets correctly aligned
- Fixed: Added version information to installer and CloneSpy executable
- Fixed: Added explanations for the formerly "unknown" error code 120
- Fixed: When adding a folder into a pool while its parent folder is in the
         other pool then the parent folder is correctly removed again
         (regression since v2.4)
- Fixed: The "total time of scanning" shown in the scan progress window no
         longer resets to 00:00:00 after 24 hours


Version 2.41  (13.06.2009)

- Added: The expansion progress of the folder tree in the Add folder window
         can now be aborted by pressing the Escape key
- Added: The location of the CloneSpy.ini and the default output folder can
         now be modified through the registry (only available for standard
         installation)
- Fixed: The creation of the folder for the CloneSpy.ini at program start no
         longer fails for users with Unicode characters in their names (only
         occurred in standard installation)
- Fixed: The date format is now correctly retrieved from a settings file


Version 2.4   (21.05.2009)

- Added: CloneSpy now comes with an installer. Alternatively, the program can
         still be unpacked and executed without installing it
- Added: CloneSpy can now create hard links (see Deletion tab of the Options
         window)
- Added: Environment variables can now be used for specifying file and folder
         paths in CloneSpy (see Specifying paths in the help file)
- Added: All folders in the tree view of the View CSC-file window can now be
         expanded/collapsed at one time via context menu
- Added: If a settings file is loaded automatically (see Command line options
         and Automation window) its path is displayed in the Main window title
- Added: The date can now be displayed in ISO 8601 format (see Time + Size tab
         of the Options window)
- Modified: Checking for a newer version is now activated by default (see the
            Menu bar of the Main window)
- Fixed: The list boxes in the Options window (see Files tab, Folders tab, and
         Names tab) now allow entries that are prefixes of other entries
- Fixed: When merging CSC-files entries with the same name and content but 
         different file path are no longer removed
- Fixed: The default text color of the pool list boxes in the Main window is
         now no longer black but taken from the system color scheme


Version 2.35  (18.10.2008)

- Added: When dropping files into a pool their folders can now be inserted
- Fixed: The Add folder window now opens without time lag


Version 2.34  (27.09.2008)

- Added: The new command line option -csc inserts CSC-files into the CSC-pool
- Added: The new command line options -c1 and -c2 allow you to automatically
         start a CSC-file generation for the corresponding pool
- Added: If all files in the Single duplicates window or all files within a
         category in the All duplicates window are marked while the delete
         button is pressed then a warning is issued
- Added: The new patterns %i and %I of the export list format (see Export tab
         of the Options window) and %i of the CSC-file export format (see the
         Export CSC-file window) allow for the enumeration of file entries
- Added: When exporting a list of duplicates, alignment of columns can now be
         switched off (see Export tab of the Options window). The same holds
         for CSC-file export (see the Export CSC-file window)
- Fixed: If "Make new file" is selected in the Logging tab of the Options
         window the View log button in the scan progress window now opens the
         correct log file


Version 2.33  (12.07.2008)

- Added: A new check box in the scan progress window makes CloneSpy close
         after a scan if results are exported or deleted automatically
- Added: If a log file is generated, it can now be viewed after a scan by
         pressing the corresponding button in the scan progress window
- Added: The date can now be displayed in different formats (see Time + Size
         tab of the Options window)
- Added: Folders entered manually in the Add folder window can now be added
         to a pool by pressing the Return key
- Added: If a pool cannot be scanned because of restrictions in the Options
         window, CloneSpy now provides a better explanation about the cause
- Modified: The command line option -e is now ignored if results are to be
            handled by the user (see the Action frame of the Main window)
- Fixed: Solved some display problems when using large fonts


Version 2.32  (14.06.2008)

- Added: The command line options -p1 and -p2 can now handle multiple folders
- Added: The new command line options -m1, -m2, -m12, -m1c, and -m2c can be
         used to override the scanning mode. See the help file for details
- Added: CSC-files can now be merged (see the Menu bar of the Main window)
- Added: Data from CSC-files can now be exported to text files (see the Menu
         bar of the Main window or the View CSC-file window)
- Fixed: The command line options -p1 and -p2 can now handle folders that end
         with a backslash. See the help file for details
- Fixed: CloneSpy no longer crashes when the View CSC-file window is closed
         before the tree view is fully generated
- Fixed: Folders in the tree view of the View CSC-file window are now shown
         in the order of acquisition
- Fixed: Adding CSC-files to the CSC-pool now works correctly again
- Fixed: Solved some display problems when using 120 DPI setting


Version 2.31  (10.05.2008)

- Modified: If equal files are scheduled to be displayed at the end of a scan
            and it is aborted, then all equal files found so far are presented
- Modified: If the last selected folder in the Add folder tree view no longer
            exists then its next valid parent is selected rather than the root
- Modified: It is now possible to specify relative paths for the log file, the
            batch file, the export list file, and the move-to folder (see
            Options window)
- Fixed: When exporting a list or batch file the accessibility of that file is
         now checked at the start of the scan
- Fixed: It is now possible to add large amounts of CSC-files to the CSC-pool
         at one time
- Fixed: Read-only files are now correctly deleted if "How to delete" is set
         to "Really delete" (see Deletion tab of the Options window)
- Fixed: Deletion of an empty folder works now even if it is read-only (see
         Deletion tab of the Options window)
- Fixed: CloneSpy no longer crashes if the command line option -e is used
- Fixed: On Windows Vista the Options window is now displayed correctly
- Fixed: Corrected memory leak within file comparison routine
- Fixed: CloneSpy message boxes now give audible feedback


Version 2.3   (21.10.2006)

- Added: The Add folder window has three new button for saving, loading, and
         merging the content of the pool
- Added: A right click on a pool shows a list of pool files recently saved,
         loaded, or merged. The list can be used for quick loading pool files
- Added: The new command line parameters -p1 and -p2 allow you to override the
         content of the pools at program start. See the help file for details
- Added: The settings menu of the Main window now has a list of settings files
         recently loaded or saved. It can be used for quick loading settings
- Added: The list in the Ignore specified folders frame can now be saved
         individually (see Folders tab of the Options window)
- Added: To include a summary containing information from the scan progress
         window in the CloneSpy log file, select the appropriate check box in 
         the Logging properties frame (see Logging tab of the Options window)
- Added: The sound playing function announcing the end of the scan can now be
         disabled (see Priority tab of the Options window)
- Modified: The Automation window now allows to specify not only absolute, but
            also relative paths to settings files
- Modified: Changed button label from "Load list" to "Merge list" in the Files
            tab and the Names tab of the Options window as the new description
            suits better to the function of the buttons
- Modified: Improved memory management in file acquisition phase, especially
            when acquiring huge amounts of files from CSC-files
- Fixed: CloneSpy does not crash any more in the file acquisition phase if the
         system runs out of free main memory
- Fixed: When scanning for files with same name and (approx.) same size, the
         correct file size is now used for comparison
- Fixed: When the Delete button in the Single duplicates window is pressed,
         the application will not drop in the background any more
- Fixed: CloneSpy can now be started in Windows XP even if the Data Execution
         Prevention (DEP) is activated
- Fixed: Added an explanation for the formerly "unknown" error code 82


Version 2.21  (05.06.2006)

- Fixed: When an XP-Style is activated on Windows XP all CloneSpy windows have
         now a context help button in their title bar
- Fixed: When a path is inserted manually in the Add folder window leading and
         trailing white spaces are ignored now
- Fixed: When searching for duplicates with or without same name the checksum
         generation progress will not exceed 100% any more
- Fixed: The icon next to "Sorting acquired files" in the scan progress window
         will not flicker any more when searching for duplicates


Version 2.2   (09.04.2006)

- Added: All pools are now Drag & Drop enabled so that folders dragged from
         the Windows Explorer can be dropped on the pools
- Added: A right-click on an item of the folder tree in the Add folder window
         will add the selected folder to the pool
- Modified: If the mode "Pool1/2 + CSC" and the action "Automatically delete"
            are selected in the Main window then the option "only in Pool 1/2"
            is automatically chosen in the Action frame as it is the only one
- Modified: The Single duplicates window is now closed right after the Delete
            button is being clicked to avoid double clickings
- Modified: Points are inserted between every three digits of large numbers
            in the scan progress window in order to improve readability
- Fixed: The automatic update checker does not crash any more when there is no
         or a bad internet connection
- Fixed: When folders are excluded from a scan, CloneSpy no longer mistakenly
         interprets those folders as files while scanning
- Fixed: The recursive deletion of empty folders is working now
- Fixed: The message that appears because a folder being added to a pool
         collides with the existing pool content is not corrupted any more
- Fixed: The icon that appears on Windows' Alt-Tab screen for CloneSpy is now
         the correct one
- Fixed: Added explanations for the formerly "unknown" error codes 31 and 32


Version 2.11  (06.06.2004)

- Fixed: The program now does not crash any more when exporting a list or a
         batch file while searching for files with same name or with same
         name + (approx.) same size


Version 2.1   (09.05.2004)

- Added: The Add-folder window now allows to enter folder paths manually 
- Added: The scanning process can now be started automatically by command line
         parameters. The program can also be exited automatically this way
- Added: The priority of the scanning process can now be changed
- Added: Besides deleting files on shorter/longer file name, this decision can
         now be made according to their full path or directory path
- Added: CloneSpy can now be exited without automatically saving the settings
         if this is chosen in the Automation window
- Added: All batch files generated by CloneSpy now present a warning when
         being executed 
- Fixed: All pools now offer a horizontal scroll bar if necessary 
- Fixed: The scanning process can now also be paused while it acquires
         CSC-files 
- Fixed: The scanning process now runs at normal speed while it acquires
         CSC-files 
- Fixed: The location of CSC-files is now remembered correctly if multiple
         files are added to the CSC-pool simultaneously 


Version 2.0   (28.12.2003)

Complete re-implementation of CloneSpy in order to integrate a wide variety of
new features: 

- Exclude files or file patterns from a scan 
- Case sensitive file name comparisons 
- Advanced log file options 
- Presentation of all duplicates at the end of a scan 
- Presentation of duplicates together in one large list 
- Lockable pools for faster scans if the content of a pool is used more
  than once 
- Search for same-name files with same size or approximately same size 
- File deletion decision based on length of file names 
- Export duplicates as list to a text file 
- Defer handling of duplicate files to a batch file in order to apply
  arbitrary file operations 


Release dates of former Versions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Version 1.51  (30.03.2002)
Version 1.5   (24.03.2002)
Version 1.41  (28.12.2001)
Version 1.4   (16.12.2001)
Version 1.3   (02.09.2001)
Version 1.2   (28.07.2001)
Version 1.11  (09.07.2001)
Version 1.1   (08.07.2001)
Version 1.0   (24.06.2001)

More information on former versions can be found in the history section at
www.clonespy.com.


_______________________
http://www.clonespy.com
