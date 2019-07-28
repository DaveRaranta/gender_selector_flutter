# gender_selector

A Flutter Package for gender selector widget for the app.

The goal of this project is to provide an ultimate widget for selecting the gender

The source code is **100% Dart**, and everything resides in the [/lib](https://github.com/dhruvil2000/gender_selector_flutter/tree/master/lib) folder.

Happy learning. :+1:

### Show some :heart: and star the repo to support the project

[![GitHub stars](https://img.shields.io/github/stars/dhruvil2000/gender_selector_flutter.svg?style=social&label=Star)](https://github.com/dhruvil2000/gender_selector_flutter) [![GitHub forks](https://img.shields.io/github/forks/dhruvil2000/gender_selector_flutter.svg?style=social&label=Fork)](https://github.com/dhruvil2000/gender_selector_flutter/fork) [![GitHub watchers](https://img.shields.io/github/watchers/dhruvil2000/gender_selector_flutter.svg?style=social&label=Watch)](https://github.com/dhruvil2000/gender_selector_flutter) [![GitHub followers](https://img.shields.io/github/followers/dhruvil2000.svg?style=social&label=Follow)](https://github.com/dhruvil2000/gender_selector_flutter)
[![Twitter Follow](https://img.shields.io/twitter/follow/iamdsp.svg?style=social)](https://twitter.com/imthepk)

[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://opensource.org/licenses/Apache-2.0)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://github.com/iampawan/Flutter-UI-Kit/blob/master/licence.txt)

# Screenshots

<img height="480px" src="https://raw.githubusercontent.com/dhruvil2000/gender_selector_flutter/master/screenshots/1.png">


## Installation

First Include this dependency in your pubspec.yaml
```yaml
gender_selector:
```

Then import it in your code.

## Widget

```dart
GenderSelector(
  margin: EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 10,),
  selectedGender: Gender.FEMALE,
  onChanged: (gender) async {

    setState(() {
      if(gender == Gender.FEMALE) {
        selectedGender = "female";
      } else {
        selectedGender = "male";
      }
    });

  },

)
```



## Contribution Guide

This project is open to all kinds of contribution in all of its categories. **Together, we can make it the ultimate Flutter UIKit available for free, for everyone, forever.**

For resource contribution, just follow the following format: `[reference-name](link) - Description`, and raise a Pull Request. If you want to contribute multiple resources, raise separate PRs for each of them. Please consider adding resources maintaining the default sorting order of the category, like alphabetical sorting.

If you have any suggestion for including more categories, feel free to open a Github issue for us to have more discussion on it. Please **DO NOT** contribute low-quality, spammy or self-promotional stuff. **Let's keep this project clean and useful.**

If you feel that a particular resource(s)/template(s) available here is not a good fit for this project and should be removed, feel free to let me know by opening an issue.

### :heart: Found this project useful?

If you found this project useful, then please consider giving it a :star: on Github and sharing it with your friends via social media.

## Project Created & Maintained By

### Dhruvil Patel & Nirav Patel (BZZZARD)

# Donate

> If you found this project helpful or you learned something from the source code and want to thank me, consider buying me a cup of :coffee:
>
> - [PayPal](https://www.paypal.me/)

## License

```
Copyright 2019 Dhruvil Patel

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
```