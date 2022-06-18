﻿# Description of parameters that can be passed in the VAParams.json file, which is used when launching Vanessa Automation from the command line.
#### This file was created automatically based on Vanessa Automation form data. Send pull requests to the form fields tooltips.
#### The template for this file can be obtained by uploading the Vanessa Automation settings to VAParams.json file.

## Global variables

* Special

      * **GlobalVars {GlobalVars}**:
An array of key and value objects. This array will be loaded into global variables and will be available when executing the script in the ContextSaved object.

## Main settings

   * **featurepath**:
      The directory of feature files or the name of a single feature file that will be executed during the testing session.

*  Filter by tags

      * **ignoretags**:
         Enter tags in the field. If the tag is detected in the feature, the whole feature will not be uploaded. If the tag is found in the scenario, only this scenario will not be uploaded.

      * **filtertags**:
         Enter tags in the field. If the tag is NOT detected in the feature, the whole feature will not be uploaded. You can also upload only the feature scenarios, which contain the tags from the list.

*  Scenario filter

      * **scenariofilter**:
         Allows you to set the order in which scripts are executed. The scripts will be executed in the order they are listed.
         Plus allows you to set a filter for executing scripts. Only scripts from the list will be executed.
         The script in the list is indicated by its name.

*  Feature file language

      * **gherkinlanguage**:
         The field defines scenatio generating language. If any but not Russain is selected, Known steps will contain additional columns with the step along with its description in selected language.

*  User actions recording

      * **addmetainformationclicking**:
         If the checkbox is on, data for translation into another language will be added when clicking the scenario step by step.

      * **searchformelementsbyname**:
         If the flag is set, then when generating the script text after pasting, the steps in the script will search for form elements by their internal name.
         If the flag is unchecked, then when generating the script text after being pasted, the steps in the script will search for form elements by title, if possible.
         This is possible if there is only one element with the given heading in the given form.

      * **ShowWindowToStopRecordingUserActions**:
         Enables the display of an additional window for conveniently stopping the recording of user actions and switching to the Vanessa Automation window. You must enable the use of the VanessaExt component.

*  External component VanessaExt

      * **useaddine**:
         Designed to manage Windows and Linux windows.
         Possibilities:
         Getting a list of windows and a list of processes
         Controlling the size and position of the window
         Taking a screenshot of a window and a screenshot
         https://github.com/lintest/VanessaExt

      * **usethegherkinparserfromthevanessaextaddin**:
         Sets the flag. that you need to use the Gherkin parser from the VanessaExt component. This parser is much faster than the built-in parser.

*  System directories

      * **projectpath**:
         The catalog with the tested project files, which are necessary for test execution.

      * **instrpath**:
         The catalog of Vanessa Automation data processor. This field must be filled on the standard installation.
         When working with Vanessa Automation Single it is allowed to leave the field blank.

*  System settings

      * **thetreetagisenabledbydefault**:
         If the checkbox is on, feature file is considered as if it has @tree tag, even if it is absent. In other words, any uploaded feature file is considered as hierarchical.

      * **EvaluateExpressionsInCurlyBraces**:
         Turns on the mode when any expression inside the parameters of the steps {} will be evaluated. If the section "Variables" is declared, but first an attempt will be made to find a variable from this section by the specified expression. Otherwise, an attempt will be made to evaluate the expression in {}.
         If {expression} is used, then the expression will be evaluated on the client.
         If {!expression} Is used, the expression will be evaluated on the server.

*  Other settings

      * **DownloadFeaturesOpen**:
         Allows you to control the behavior of Vanessa Automation when opening: do you need to upload a feature file with which the work was carried out in the previous session or not.

      * **usersettingsprovider**:
         Custom settings provider

      * **addressofcustomsettings**:
         The file path or url where the settings are located. By default, the project directory (default filename is user_settings.json) or localhost.
         As a result of reading the settings file, global variables will be created.
         When running tests from the command line, to create variables, you need to pass them in the main settings json file in the "GlobalVars" parameter, which is an array of Key:Value values.

      * **commandtoopenfeatureintexteditor**:
         This field contains a text editor to open a feature file and position on the current line when clicking "Open .feature file in editor".

## Test client settings

*  Test client launch

      * **runtestclientwithmaximizedwindow**:
         If the option is on, TestClient will launch in full-screen mode.

      * **modalwindowwhenstartingtestclientiserror**:
         If this option is enabled, then the modal window when starting the test client means a test client connection error.

      * **starttestclientsessionagainonconnectionifitsprocessisnotfound**:
         Enables restarting the test client process if the previous run did not work (for example, if no license was obtained). For thick and thin clien only.

      * **DetermineTheRealPortOnWhichTheTestingClientWasLaunched**:
         If this option is enabled, then when the testing client connects, an attempt will be made to determine the real port on which the testing client was launched.
         It is necessary. since the testing client can change the port on which it started, despite the passed parameters.
         This issue is relevant when running tests on Linux.

      * **testclientprocessstartinterval**:
         Specifies the interval at which an attempt will be made to start a testing client session.

      * **testclientports**:
         Specifies ports range to search for free port to run TestClient. For example 48100-48200.

      * **testclienttimeout**:
         Specifies timeout in seconds of Vanessa Automation awaiting for TestClient launch. After timeout the exception will be risen.

*  TestClient debug

      * **testclientdebug**:
         If the check box is selected, TestClient will be launched with /debug and /debuggerURL startup keys.

      * **testclientdebugaddress**:
         Address of debugger to be passed to TestClient.

      * **testclientdebugkeys**:
         Launch parameters to be passed to TestClient.

*  Browser launch

      * **browserlaunchcommand**:
         This field indicates the command to launch the browser. If the field is empty, then the default browser will be used to start the web client.
         If there is a TestClientUrl string in the browser launch command, then it will be replaced with the test client connection string. Otherwise, the test client connection string will be appended to the end as the last parameter.

*  Closing test client

      * **forceclosetestclient**:
         If the flag is set, then when closing the testing client, it will be checked whether the testing client has closed by its PID. If the testing client has not closed normally, an attempt will be made to close it using the OS command.

      * **timeoutbeforeforciblyclosingtestclient**:
         The number of seconds to check that the testing client process completed on its own.

*  Mobile client

      * **PathToadb**:
         The path to the adb program file

## Running scenarios

*  Logging and notification

      * **logtogr**:
         If the checkbox is on, scenario and steps beginning events will be written to the event log.

      * **soundnotificationwhenscriptends**:
         If this option is enabled, the following sound notification will be issued at the end of the script execution:
                 1. Scripts completed successfully.
                 2. An error occurred while executing the script.
                 3. The breakpoint was triggered.
         You must enable the use of the VanessaExt addin.
         This option only works under Windows.

*  Script execution speed

      * **makestepsasync**:
         If the checkbox is on, each step will be executed asynchronously with the specified delay.
         If the checkbox is off, the steps will be executed synchronously. Steps tree will be updated on each 100th step.
         Scenario runs several times faster when the flag is off.

      * **SpacingStepSpecifiedUser**:
         Specifies delay between steps in asynchronous mode.

*  When an error occurs

      * **stoponerror**:
         If the checkbox is on, scenario will be executed until the first error occurs.
         All the following scenarios will be skipped.

      * **showrownumberonerror**:
         If flag is set, when an error occurs in tree steps will be shown column with the row number in the tree, if this column was hidden.
         Actual when working in the step tree mode.

*  Stop script execution

      * **ShowWindowForStoppingScriptExecution**:
         Enables the display of an additional window that allows you to stop the execution of the script. You need to enable the use of the VanessaExt component.

*  Update of script execution statistics

      * **updatestatistics**:
         If the flag is set, then statistics are updated during script execution: how many script steps have passed, how many scripts have crashed, and so on.

*  Test execution stabilization

      * **numberofattemptstoperformanaction**:
         Sets maximum tries number for multiple steps.
         Increasing this parameter may make scenarios execution more stable on the weak hardware.

      * **timetofindwindow**:
         Maximum time to search for a window in a step
         ```Gherkin
         Then "WindowTitle" window is opened
         ```

      * **timeoutforasynchronoussteps**:
         Specifies the maximum time to wait for an asynchronous step.
         For example, if the parameter value is set to 20 seconds and the step is used
         ```Gherkin
         And I wait the field named "FieldName" will be filled in 10 seconds
         ```
         then in reality the maximum step time will be 20 seconds, not 10.

      * **safeexecutionofsteps**:
         Adds delay for multiple actions, which may cause unstable scenario execution, e.g.: move to line, field value check etc.
         This option slow the execution down .

      * **pauseonwindowopening**:
         Additional pause value that will always be applied in a step
         ```Gherkin
         Then "WindowTitle" window is opened
         ```

*  Updating data in a tree in steps

      * **updatetreewhenscenariostarts**:
         If the checkbox is on, current row of the tree will be active on step execution. It is recomended to turn the checkbox off on CI server to fasten up.
         Actual when working in the step tree mode.

*  Script statuses

      * **pendingequalfailed**:
         If the checkbox is on, pending steps will set assembly status to failed on the execution on CI server.
         It is recommended to set this checkbox on.

      * **distinguishbrokenorfailedbythenkeyword**:
         If the checkbox is on, assembly status will be set to Failed only if failing step starts with Then keyword. In all other cases - Broken. This helps distinguish broken tests from real configuration errors.

*  Other script execution settings

      * **dosleepusingping**:
         If this option is enabled, then the Sleep() method will be called through a call to the Ping command. This is necessary if the testing client window is currently not responding to requests.

      * **banoverwritingvariables**:
         If the checkbox is on, pending steps will set assembly status to failed on the execution on CI server.
         It is recommended to set this checkbox on.

      * **updateformtableswhengettingvalue**:
         If this option is enabled, then when receiving a table, the test will try to find and click on the "Refresh" table button and press it.
         An update attempt will occur if there are several attempts to get the table value and the first attempt was unsuccessful.

      * **getlayoutsusingextensionvaextension**:
         Enables retrieval of layout values (printable forms and reports) using the VAExtension.
         Allows you to receive the entire layout with the design in the web client.

## Screenshots

   * **onerrorscreenshot**:
      Enables taking screenshots in case of an error.
      To enable the option, make sure the "Screenshot creation command" field is filled in or VanessaExt is enabled.

   * **onerrorscreenshoteverywindow**:
      Enables taking screenshots for each 1C window when an error occurs.
      SikuliX or VanessaExt (recommended) is used for this option.

   * **useaddinforscreencapture**:
      To take screenshots, use the VanessaExt add-in instead of the screenshot creation command.
      For the option to work, it is necessary to enable the use of the VanessaExt external component.

   * **outputscreenshot**:
      Screenshots directory.

   * **screencaptureaddinmethod**:
      Full Screen - Gets a screenshot of the entire screen, including the operating system taskbar.
      Current Test Client Window - Gets a screenshot of only the active test client window.
      All testing client windows - gets a screenshot of all testing client windows

   * **commandscreenshot**:
      The field specifies the console command that will be used when taking screenshots.
      For example:
           1. "C: \ Program Files (x86) \ IrfanView \ i_view32.exe" / capture = 1 / convert =
           2. nircmd savescreenshot

## Scenario report

*  General

      * **addtofeaturefilter**:
         This option is used when one report (e.g. Allure) is generated for several similar assemblies (e.g., the same tests). In this case "Current assembly name" field value will be added to the scenario name to avoid non-unique names. 

      * **createlogs**:
         If the flag is set, Vanessa Automation will upload the script execution status to a file.
         Details here:
         https://pr-mex.github.io/vanessa-automation/dev/ReturnStatus

      * **buildname**:
         Unique assembly name used along with the parameter "Add uploading conditions to scenario name".

      * **logpath**:
         The path to the file into which the script execution status will be uploaded.

*  Test video record

      * **recordtestrunvideo**:
         Enables video recording during the test. You must enable the use of an external VanessaExt add-in.
         A video file will be created for each scenario.

      * **thenumberofframesofvideotestsession**:
         The number of frames for recording video.

      * **testrecordingvideocommand**:
         he command to run the "ffmpeg" application. It is recommended to set the path to ffmpeg in the "path" system variable.

      * **directoryforrecordingvideotestexecution**:
         Directory for video files.

*  Logging events to a file or console

      * **logtotext**:
         Switches on scenario execution log.
         Log events:
                 1. Scenario execution begin
                 2. Error event
         Log output is possible either to a file, or to the console, or to a file and a console at the same time.

      * **outputloginconsole**:
         Enables logging to the console.
         For this option to work, you must enable the use of the VanessaExt addin.

      * **logstepstotext**:
         Writes step beginning event to the log.

      * **fulllog**:
         More details in the log
                 1. Number of tests in total
                 2. How many fell / successfully / missed
                 3. Time passed / left

      * **textlogname**:
         Vanessa Automation log file name.
         If the field is empty, then the log will not be output to a text file.

*  Allure

   *  Main settings

         * **allurecreatereport**:
            Create a scenario execution report in Allure format.

         * **setvariablevaluesinstepsallurereport**:
            If this option is enabled, then in the parameters of the steps in which the variables were used, the variable names will be replaced with their values.

         * **allurepath**:
            Allure reports directory. When run locally, the directory will be cleaned up each time the scripts are run.

         * **allurepathbase**:
            The directory in which report data is generated in Allure format, and subdirectories will be created for each assembly. This parameter takes precedence and the value of the "Allure Report Catalog" parameter will be ignored.

         * **reportlevel1**:
            Sets first level of grouping in Allure report on the Behaviors tab. See Help info for details.

         * **reportlevel2**:
            Sets second level of grouping in Allure report on the Behaviors tab. See Help info for details.

         * **reportlevel3**:
            Sets third level of grouping in Allure report on the Behaviors tab. See Help info for details.

         * **directorytobuildhierarchy**:
            The directory for features hierarchy calculation. See Help info for details.

         * **testsuites**:
            Sets grouping value for Allure report on the Suites tab. See Help info for details.

         * **tagsskippingscript**:
            List of tags separated by ";".
            If the script contains such a tag, then the script will not be executed and the Allure report will have the skipped status.

   *  Appendices to the report

         * **attacheventlogtotheallurereport**:
            If an error occurs, a log will be attached to the script. Data is taken from the moment the scenario starts.

         * **attachnetworkconnectiondatatotheallurereport**:
            If the option is enabled, then when an error occurs, data will be collected on the network connections of the PC on which the tests were run.

         * **attachactiveformdatatotheallurereport**:
            If the option is enabled, states of items of the active form will be collected in xlsx format in case of an error.

         * **attachallformsdatatotheallurereport**:
            If the option is enabled, states of items of all forms opened in TestClient will be collected in xlsx format.

         * **attachdataoftheoperatingsystemprocessestotheallurereport**:
            If the option is enabled, then when an error occurs, data on running OS processes will be collected.

         * **attachvariablestotheallurereport**:
            If the option is enabled, data with Context and Global Context variable values will be collected when an error occurs.

         * **attachmxlfilestoallurereport**:
            Files of reports and their templates will be attached to the Allure report in mxl format.

         * **attachmxlfilessavedinhtmlformattoallurereport**:
            All mxl files that will be attached to the Allure report will be saved in HTML format. This makes it easier to open and view the result.

         * **attachadditionaldatawhencomparingvaluewithreferenceallure**:
            If this option is enabled, then when comparing a layout with a reference or when comparing a table with a reference, additional files will be generated:
            a picture containing the difference between the reference and the current value of the table or layout
            a picture of the current value
            picture of the reference value
            a gif file showing the difference between the current and reference value.
            An additional section will also appear in the Allure report, where you can conveniently view a comparison of the reference and the current value.
            For this option to work, it is necessary that the ImageMagick 7 version or higher and the ghostscript package https://www.ghostscript.com/download.html, which converts pdf files into pictures, must be installed on the PC where Vanessa Automation is running.
            It is also necessary that commands of the form are executed on the PC:
            magick convert file.pdf file.png
            An example result can be seen here.

   *  Allure labels data

         * **DataAllureMarks**:
            The table is used to map script tags to pace marks.
            If a regular expression is specified in a table row, then a regular expression from this table is applied to each script tag, and if the tag matches it, then a tag in the TagName: Value format will be added to the report.
            If no regular expression is specified in a table row, then the label is added unconditionally.
            You can read more about why this may be needed here
            https://habr.com/ru/company/sberbank/blog/359302/

*  JUnit

      * **junitcreatereport**:
         Generate a report in JUnit format based on the results of script execution.

      * **junitpath**:
         Report generation directory.

      * **junitscreenshots**:
         From version 13.12 screenshots can be added to jUnit.
         For everything to work correctly - the Screenshot Directory must be located inside the Project Directory.
         Save the screenshots folder as artifacts.

*  ASDS

      * **ModelingCreateReport**:
         Generate a report in the SPPR format based on the results of the scenarios.

      * **modelingreportpath**:
         Report directory.

*  Cucumber

      * **cucumbercreatereport**:
         Generate a report in Cucumber format based on the script execution results.

      * **cucumberreportpath**:
         Report directory.

*  Json

      * **logerrorstotext**:
         Create json file with the detailed information for each error.

      * **CollectDataOnVariableValues**:
         Enables the collection of data about the values of variables.

      * **getactiveformdataonerror**:
         If the option is on, the status of the elements of the active form will be collected in mxl format.

      * **getallformsdataonerror**:
         If the option is on, the status of the elements of all forms opened in TestClient will be collected in mxl format.

      * **collectdataoftheoperatingsystemprocesses**:
         If the option is enabled, then when an error occurs, data on running OS processes will be collected.

      * **collectnetworkconnectiondata**:
         If the option is enabled, then when an error occurs, data will be collected on the network connections of the PC on which the tests were run.

      * **texterrorslogname**:
         A directory for generating files with data about errors and the state of form elements and other data related to the error. The directory is cleared when the scripts start running.

*  Internal format

      * **simplereport**:
         Enables a scenario execution report in the internal format.

## Auto instructions

*  UI Automation

      * **UseUIAutomation**:
         Enables the use of the UI Automation mechanism in Windows to emulate movement and mouse clicks in steps from the Vanessa Automation standard steps library.
         For example, when the option is disabled, step
         And I click on the "TitleButton"
         just clicks on the button without performing any interactive actions.
         If the option is enabled, the mouse cursor is first moved to this button, and then the button will be pressed.

*  Working with the browser

      * **usebrowserwebsocket**:
         Allows to execute external commands in the browser using WebSocket.
         For the option to work, you must enable the use of the VanessaExt component.

      * **ignorebrowsersearcherrors**:
         Allows to continue running the scenario if the form item is not found in the browser.

*  Image search

      * **findingpicturesusingaddinvanessaext**:
         If this option is enabled, then the steps performing image search on the screen will use the external addin VanessaExt instead of using SikuliX.

      * **PictureSearchThreshold**:
         A number that determines the threshold for searching for a picture on the screen. The value can be set in the range from 0 to 1.

*  Keyboard emulation

      * **emulatekeyboardinputwithVanessaExt**:
         Enables emulation of keyboard input using VanessaExt add-in

*  Mouse emulation

      * **emulatemousemovementswithVanessaExt**:
         Enables mouse movement emulation using VanessaExt add-in.

   *  Mouse coordinate offset

   *  Mouse movement speed

   *  Mouse click highlight

         * **hlightmouseclicksinbrowser**:
            If this option is enabled, click highlighting will be enabled using the external VanessaExt component.

      *  Selecting a color for highlighting mouse clicks

            * **mouseclickhighlightcolor**:
               Number. Sets the color for highlighting mouse clicks.

         * **mouseclickhighlightradius**:
            Sets the radius of the click animation.

         * **mouseclickhighlightwidth**:
            Sets the width of the click animation.

         * **mouseclickhighlightduration**:
            Sets the duration of the click animation.

         * **mouseclickhighlighttransparency**:
            Sets the transparency of the click animation.

*  HTML and Markdown

      * **htmlcreate**:
         If the checkbox is on, HTML screencast will be created during scenario execution.
         Specify console command for snapshots generation in  "Snapshot creating command" field.
         Also use special instructions in the script, see Help info.

      * **markdowncreate**:
         If the checkbox is on, MarkDown screencast will be created during scenario execution.
         Specify console command for snapshots generation in  "Snapshot creating command" field or the screenshots flag is set by the "VanessaExt" component".
         Also use special instructions in the script, see Help info.

      * **htmlpath**:
         HTML instruction catalog

      * **markdownpath**:
         Markdown Instruction Directory

      * **autonumberingofsteps**:
         Adds auto numbering to the beginning of the step description text.
         To ensure that leading zeros are not lost when exporting from MD format, the text is written to the code block.

*  Audio

   *  General

         * **soundscenarioexecution**:
            Includes voice acting of the script execution according to the specified settings of the announcer's voice.

   *  Voiceover by announcer

         * **ttstype**:
            Specifies the narrator's voice.

      *  Microsoft TTS

            * **audioenginetts**:
               The console command to be used when converting text to speech.
               The  balabolka_console program is used.

            * **ttsvoice**:
               Specifies which voice will be used for voice acting. It is allowed to indicate not the full name of the voice in the system, but only a part, for example "Elena".
               You will need to install Microsoft Speech Platform x32 and Server Runtime Languages.

            * **speedofspeech**:
               Narrator's speech speed.
               Value range is from -10 to 10.

      *  Yandex TTS

            * **yandexttslanguage**:
               Sets the language in which the speaker will speak. Details here.
               To control accent and pronunciation, see here.

            * **yandexttsvoice**:
               Sets the voice for the announcer to speak. Details here.
               To control accent and pronunciation, see here.

            * **yandexttsemotion**:
               Sets the emotion with which the announcer will speak. Details here.
               To control accent and pronunciation, see here.

            * **yandexttsspeed**:
               The speed (tempo) of synthesized speech.
               Speech rate is specified as a fractional number in the range from 0.1 to 3.0.

            * **yandexttsquerytype**:
               Determines how the audio files will be received: through the official API or through the free interface. The recommended value is via the official API.

         *  Authorization

               * **yandexttsfolderId**:
                  The last part of the path of the address string in the Internet browser. https://console.cloud.yandex.ru/folders/Directory ID
                  Required:
                                   1. In the main Yandex.Cloud window, click the "Go to the current directory" link.
                                   2. Copy the last part of the path from the address bar
                  Example:
                  https://console.cloud.yandex.ru/folders/b1gheo81t4a6eaafe5vd
                  (Directory ID - b1gheo81t4a6eaafe5vd)
                  Retrieving a Directory ID

               * **yandexttsoauthtoken**:
                  The OAuth token is used in the authentication procedure in Yandex.Cloud
                  To receive an OAuth token, you need:
                                   1. Follow the link https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token;
                                   2. Generate a token;
                                   3. Save it to a text file;
                                   4. Specify the path to the text file with the token.

               * **yandexttsapikey**:
                  The API key is used in the authentication procedure in Yandex.Cloud
                  https://cloud.yandex.ru/docs/iam/operations/api-key/create
                  If specified, then authorization will be through it, if not, it will be through the Token

      *  Group amazon TTS

            * **amazonttslanguage**:
               See the correspondence of language and voice here.

            * **amazonttsvoice**:
               See the correspondence of language and voice here.

            * **amazonttsengine**:
               See the options for the value for the "Engine" field here.

            * **amazonttsregion**:
               The field specifies the region parameter. The default is us-east-1.

            * **amazonttskey**:
               Amazon cloud access key.

            * **amazonttssecretkey**:
               The file where Amazon cloud private key is stored.

      *  Group other TTS engine

            * **pathprocessingenginetts**:
               Allows you to generate voiceovers for a step using external processing. Processing should contain an export method in the main form:
               GetMp3File (Vanessa, VideoParams, Text, FileName, VoiceParams)
               Where:
               Vanessa - Vanessa Automation context framework
               VideoParams - Structure containing video recording parameters
               Text - the text to be read
               FileName - the name of the current video clip
               VoiceParams - additional voice parameters specified in the feature file using additional directives
               The method should return the path to the mp3 file.

            * **SettingsOtherEngineTTS**:
               Allows you to set an arbitrary set of settings for generating voiceovers.

      *  SBER parameters

            * **sberttsvoice**:
               Sets the voice to generate.
               Examples of voices can be found here

      *  Voice test

   *  Audio cache

         * **cachettsfiles**:
            Switchs on voice file cashing.
            Makes video assembly process faster.
            Reduces external voice generation servises usage.
            Reduces voice generation costs.

         * **ttsfilescache**:
            Voice cache files directory.

   *  Replacements dictionaries

         * **changewordslib**:
            List of files that will be used for autocorrect spoken text.

*  Video

      * **videocreate**:
         Allows you to create video instructions.
         A video describing the settings is in this playlist.
         It is also recommended to read this FAQ.

      * **videopath**:
         Directory where will be placed result of assembly videos or animated screencast.

      * **instructiontypevideo**:
         Create a video tutorial.

      * **instructiontypehtml**:
         Create animated HTML screencast.

   *  Video settings

      *  General

            * **videocapturetool**:
               If VLC is selected, VLC will be used for video recording. Otherwise, VanessaExt add-in that will call ffmpeg will be used.

            * **fps**:
               Sets shots per second number for the recording.

            * **tempfolderforvideo**:
               The directory for temporary files created on video recording and composing. The directory is cleared before each recording!

            * **cachevideo**:
               If the flag is set then when the step is running
               And the video insert "TextInsert"
               there will be a check to see if there is already such a video fragment in the cache.
               If there is no fragment in the cache, it will be added there.
               If there is a fragment, then it will be taken from the cache.
               Setting the flag speeds up video assembly.

            * **videocachepath**:
               Video snippets directory.

      *  Screen

            * **screenwidth**:
               Sets screen width for the recording. Maximum value is screen width for the current resolution. If the specified value is less than screen width, screen area beginning from upper left corner will be recorded.

            * **screenleft**:
               Sets left indent

            * **screenheight**:
               Sets screen height for the recording. Maximum value is screen height for the current resolution. If the specified value is less than screen height, screen area beginning from upper left corner will be recorded.

            * **screentop**:
               Sets top indent

      *  Console commands

            * **ffmpegcomand**:
               Video running and processing command. Also you can specify a full path to ffmpeg.exe file
               Default: ffmpeg

            * **convertcomand**:
               The field describes how the Convert command will be invoked.
               For ImageMagick 7, just specify "magick convert."
               For older versions, you need to specify the path to the executable convert.exe file in the directory with the ImageMagick program.
               Example:
               "C:\Program Files\ImageMagick-X.X.X-Q16\convert.exe"
               Download: https://imagemagick.org/script/download.php
               For versions earlier than 7 during the installation, the following item is required for installation: Install legacy utilities (e. G. Convert)

         * **comandrecvideo**:
            Command to start VLC for screen recording. You can specify bitrate and other parameters.

   *  Audio settings

         * **dotts**:
            Switches on the voicing of the video.

      *  Music

            * **musicpath**:
               mp3 files directory.
               If this field is filled, random mp3 file will be retrieved from this catalog as a soundtrack.
               If mp3 file duration is less than the video's, it will be repeated.

            * **musicvolume**:
               Value range is from 0 to 1.
               If the specified value is 0, it will not affect music volume.
               If value is greater than zero (e.g., 0.06), it will affect the volume of the soundtrack.
               Recommended value is 0.1 or less.

   *  More

         * **mousecurfile**:
            The path to the image used for mouse cursor appearance.

         * **watermarkfile**:
            Png image used as a watermark.
            Watermark will be placed in the lower right corner of the video.
            The image resolution must be less than the resolution in which the video is recorded.

         * **accelerationpercentage**:
            Maximum speeding percentage available for video snippet (for a single step).
            Video assembly mechanism can speed up video snippet, for example, if soundtrack for video is 5 seconds long, and video snippet is 10 seconds long.
            Is the specified value is 0, than there is no limit on the speeding up.
            Recommended value is 30%.
            Then in the example above the video will speed up (10 * (1-0.3)) from 10 to 7 seconds.

         * **addsubtitles**:
            Switches on adding video subtitles.

         * **groupofstepsasastep**:
            Switches on the mode, when each first level group of scenario steps will be converter to one step in automanual.

         * **hideservicewindows**:
            Hides service console windows used for video assembly.
            Speeds up video assembly. This mode is recommended.

         * **disablescalingofsteps**:
            Switches of video snippets scaling by time.

         * **turnofffeaturetitleslide**:
            Switches off creating of video initial slide with feature file header.

         * **turnoffscenarioslide**:
            Switches off creating of video initial slide with scenario header.

         * **turnofffinalslide**:
            Switches off creating of video final slide with video total information.

         * **highlightmouseclicks**:
            Switches on mouse clicks highlighting. Project utility UIToolsFor1C is used.
            SikuliX emulates mouse clicks.

         * **emulatekeyboardinput**:
            Switches on text input emulation. Project utility UIToolsFor1C is used.
            Only Russian and English are available.
            Keyboard layout shwitches by pressing Ctrl+Shift emulation.

      *  Customize the title slide features

            * **changefeaturetitleslide**:
               If the flag is set, then the standard file with the feature header will be replaced with the specified video file. The video file must be of the same resolution as the video being recorded. It must also have an audio track.

            * **addmusictofeaturetitleslide**:
               If the check box is selected, music will be added to the video file with the feature title

            * **featuretitleslidepath**:
               The path to the video file with the feature title, which will be added instead of the standard one.

      *  Final slide settings 

            * **changefinalslide**:
               If the flag is set, then the standard final file will be replaced with the specified video file. The video file must be of the same resolution as the video being recorded. It must also have an audio track.

            * **addmusictofinalslide**:
               If the check box is selected, music will be added to the final video file.

            * **finalslidepath**:
               The path to the final video file that will be added instead of the standard final video file.

*  SikuliX server (deprecated)

      * **usesikulixserver**:
         SikuliX is a Java application that allows you to control mouse movements and clicks on the screen, as well as emulate keystrokes on the keyboard.
         SikuliX Server is a special software optimization for working with SikuliX. If the option is enabled, VA builds one large script from many SikuliX scripts, which can be run once and quickly execute the necessary commands that previously had to be run one at a time. This allows you to significantly save time for executing one SikuliX script, because no time wasted on launching SikuliX and unloading it from memory.
         Installation and configuration of SikuliX and SikuliX Server is described in help section 20.1
         Open Help

      * **emulatemousemovement**:
         If the checkbox is on, then the search of form element or control will be performed on steps execution. Mouse pointer will be moved to the detected element. 
         SikuliX is used for picture search and mouse movement. Picture will be generated by the text from the form element.
         To disable mouse movement at a specific step, you should use the #[DoNotMoveMouse] directive.

      * **sikulixscriptpath**:
         Script directory. Multiple directories can be used, separated by ";".

      * **pathforpicturegeneration**:
         The directory in which pictures will be programmatically created to search for them on the screen.

## Vanessa Editor

   * **usecurrentformdatawhenselectingsteps**:
      Enables the ability to use data from the current test client form, such as field names, window titles, and so on, when adding steps.

   * **showsubscenariolines**:
      Enables the display of subscript lines in the editor.

   * **showcodeminiature**:
      Controls the display of the code miniature.

   * **replacetabswithspaces**:
      The option determines whether tabs should be replaced with spaces in the editor.

   * **showbookmarkstop**:
      If the option is set, then bookmarks will be displayed at the top. This is to give the script editor more room to display the script.

   * **syntaxcheckingineditor**:
      Option to enable/disable syntax checking in script editor

   * **showdifferencesineditorseparately**:
      Controls how differences are displayed when comparing files in the editor.
      If the option is enabled, then two columns are displayed, otherwise the differences are shown in the text of the file.

   * **OpenStartPageAtStartup**:
      Enables display of the start page in the editor when Vanessa Automation starts.

   * **ShowVariableValuesInEditorLines**:
      Enables displaying data by variable values in the editor (inline debug). Variable values are updated after the step line is executed.

   * **displayingtabsandspaces**:
      Changes the display mode of tabs and spaces

   * **vanessaeditortheme**:
      Allows you to change the editor theme.

## Libraries

*  Re-code library

      * **librarycatalogs**:
         List of directories that contain epf files containing script steps and feature files containing export scripts.

      * **stepsfrommetadata**:
         The list contains paths to forms within the configuration containing step descriptions.

## Test clients

   * **datatestclients**:
      A list of testing clients, which indicates:
           1. Profile name
           2. Synonym
           3. Testing client type
           4. String of connection to the base
           5. Additional launch options
           6. Computer name to establish connection
           7. Port

