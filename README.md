# calabash_first_steps
small calabash project.

http://calaba.sh/

Calabash is a test automation framework to create and execute automated acceptance tests for Android and iOS apps. Calabash works by enabling automatic UI interactions within an application such as pressing buttons, inputting text, validating responses, etc.

While this is a great first step in automated UI acceptance test automation, the real benefits can be gained when Calabash tests are executed on real mobile devices. This is very easy and Calabash tests can be configured to run on hundreds of different Android and iOS devices, providing real-time feedback and validation across many different form factors, OS versions, OEM customizations and hardware specs.


    Calabash for Android - How to do crasy stuff:
        Installation:
            Install Ruby
                RubyInstaller.org for Windows
                Check installation $ ruby -v
            use Bundler
                to ensure you get all dependencies properly installed
                $ gem install bundler
                $ bundle install
            Install SDK
                https://developer.android.com/studio/index.html
                create an environmental variable ANDROID_HOME to point the location of unzipped or installed SDK folder

            Install calabash-android
                $ gem install calabash-android
                Verify calabash installation
                $ calabash-android version
            Execute:
                Basic Calabash Setup
                    generate a basic file structure:
                    $ mkdir calabash-test-android
                    $ cd calabash-test-android
                    $ calabash-android gen (create a Cucumber skeleton in the current folder)

             Adjust / write Testcases

                Find App Element (Ids):
                    http://stackoverflow.com/questions/31054111/calabash-android-finding-ids-and-handling-placeholders
                    PS D:\calabash\calabash-test-android> calabash-android console .\CALCU.apk
                    irb(main):003:0* reinstall_apps
                    irb(main):004:0> start_test_server_in_background
                    irb(main):005:0> query("*")


                Run a Test
                    $ calabash-android run <apk>
                    $ bundle exec calabash-android run CALCU.apk
                    Calabash-android will install an instrumentation along with your app when executing the app. We call this instrumentation for "test server". The "test server" has special permission that allows it to interact very closely with your app during test. Everytime you test a new binary or use an upgraded version of calabash a new test server will be build. The test server is an intrumentation that will run along with your app on the device to execute the test.
