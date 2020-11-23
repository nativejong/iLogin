<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
***
***
***
*** To avoid retyping too much info. Do a search and replace for the following:
*** github_username, repo_name, twitter_handle, email
-->





<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/github_username/repo_name">
    <img src="/images/login.png" alt="My cool logo" width="220" height="120"/>
  </a>

  <h3 align="center">iLogin</h3>

  <p align="center">
     iLogin is a quick and easy way to add a Login/Signup UX to your iOS app.
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

iLogin is a quick and easy way to add a Login/Signup UX to your iOS app.
<table  border="0" >
  <tr>
    <td>Login</td>
    <td><img src="/images/login.png" width=220 height=120></td>
  </tr>
 </table>


### Built With

* [XCode Version 11.7](#about-the-project) 


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

Required software and how to install them.
* install cocoapods
```sh
    sudo gem install cocoapods 
```

### Installation

1. Add to Podfile
```sh
    pod 'BPod', :git => 'https://github.com/jalajoninc/BPod.git'
```
2. Install this pod
```sh
    pod install 
```

3. Open the Xcode workspace
```sh
    open [app name].xcworkspace 
```

4. Import the library (header's file)
```sh
    @import iLogin;
```

5. Declare the library (header's file)
```sh
    @property (nonatomic, strong) iLogin *myFrame;
```

6. Initialize iLogin Framework
```sh
    CGRect rect = CGRectMake( 0.0, 0.0,  159.0,  300.0 );
    self.myFrame = [[iLogin alloc] initWithFrame:rect];
    [self.view addSubview:self.myFrame];
```

7. Monitor iLogin activities
```sh
    [self.login watchAction:1 login:^BOOL(NSString *usr, NSString *pwd) {
        NSLog( @"forget : %@ %@", usr, pwd );
        return( false );
    } reg:^BOOL(NSString *name, NSString *phone) {
        NSLog( @"forget : %@ %@", name, phone );
        return( false );
    } forget:^BOOL(NSString *phone) {
        NSLog( @"forget : %@", phone );
        return( false );
    } createPwd:^BOOL(NSString *pwd) {
        NSLog( @"forget : %@", pwd );
        return( false );
    } verify:^BOOL(NSString *code) {
        NSLog( @"forget : %@", code );
        return( false );
    }];
```

8. Monitor iLogin activities in swift
```sh
        login?.watchAction(1, login: { ( usr : String?, pwd : String?) -> Bool in
            return false
        }, reg: { (name : String?, phone : String?) -> Bool in
            return false
        }, forget: { (phone : String?) -> Bool in
            return false
        }, createPwd: { (pwd : String?) -> Bool in
            return false
        }, verify: { (code : String?) -> Bool in
            return false
        })
```



<!-- USAGE EXAMPLES -->
## Usage

_For more examples, please refer to the [Documentation](https://example.com)_



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact
* Email: [native.jong@gmail.com]()

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Java Blaine]()

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo.svg?style=flat-square
[contributors-url]: https://github.com/github_username/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo.svg?style=flat-square
[forks-url]: https://github.com/github_username/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo.svg?style=flat-square
[stars-url]: https://github.com/github_username/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo.svg?style=flat-square
[issues-url]: https://github.com/github_username/repo/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo.svg?style=flat-square
[license-url]: https://github.com/github_username/repo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/github_username
[product-screenshot]: images/screenshot.png