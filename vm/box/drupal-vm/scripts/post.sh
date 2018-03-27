#!/usr/bin/env bash

echo -n "Post provision task"

TEST_SETUP_COMPLETE_FILE="/etc/drupal_vm_test_config_complete"

# Check to see if we've already performed this setup.
if [ ! -e "$TEST_SETUP_COMPLETE_FILE" ]; then
  sudo ln -s /var/www/tests/behat/behat.vm.yml /var/www/drupalvm/tests/behat/
  # Create a file to indicate this script has already run.
  sudo touch $TEST_SETUP_COMPLETE_FILE
else
  exit 0
fi
