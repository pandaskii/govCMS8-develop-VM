# govCMS8 Develop VM

## Requirements
- [ansible](https://www.ansible.com/) (macOS/Linux only)
- [virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [vagrant](https://www.vagrantup.com/)
- [git](https://git-scm.com/)

## Work with it locally

### Durpal-VM

Visit [Drupal VM](http://www.drupalvm.com/) for more details.

### Install dependencies

Download the Drupal VM dependencies listed in [Drupal VM's README](https://github.com/geerlingguy/drupal-vm#quick-start-guide).

If you're running [Homebrew](http://brew.sh/index.html) on Mac OSX, this is as simple as:

    xcode-select --install
    brew tap caskroom/cask
    brew install ansible
    brew cask install virtualbox vagrant

### Clone the site

    ```cd``` into this project directory

    ```git clone -b 1.x git@github.com:govCMS/govCMS8.git```

Then you can follow the site install instructuions from https://github.com/govCMS/govCMS8

    cd govCMS8
    composer install

### Boot the VM

```cd``` into this project ```vm``` directory then run ```composer install``` (first time)

```cd``` into this project directory then run ```vagrant up```

For the first time installition, you will be asked for installing plugins.

```vagrant install plugin cashier```

Then you can follow the instructions on the screen to boot the VM up.

### Knowing issues

 * [Virtualbox 5.2.0 and Vagrant 2.0.0](https://github.com/hashicorp/vagrant/issues/9090)

### Tests

#### Local behat testing with VM

Run the headless chrome in guest machine at first

```google-chrome-stable --disable-gpu --headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222```

or

```google-chrome-stable --headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 --window-size=1280,1696```
