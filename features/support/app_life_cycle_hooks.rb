require 'calabash-android/management/adb'
require 'calabash-android/operations'

Before do |scenario|
  `#{adb_command} logcat -c` # clears logcat output
  start_test_server_in_background
end

After do |scenario|
  # save logs from adb
  `mkdir $REPORT_PATH/#{scenario.name.downcase.tr(' ', '_')}`
  `#{adb_command} logcat -v time -d \
  > $REPORT_PATH/#{scenario.name.downcase.tr(' ', '_')}/sys_log.out.txt \
  2> $REPORT_PATH/#{scenario.name.downcase.tr(' ', '_')}/sys_log.err.txt`
  
  if scenario.failed?
    shutdown_test_server
  end
  shutdown_test_server
end
