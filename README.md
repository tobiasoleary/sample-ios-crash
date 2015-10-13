# sample-ios-crash

Code Demonstrates a Strange Issue with iOS


The relevant file is `CustomView.swift`.    
The relevant method is `_setup()`.

When project uses the `Debug` configuration everything is fine.    
When project uses the `AdHoc` configuration an `EXC_BAD_ACCESS` occurs at line 67.

```
LayoutConstraintFactory.alignLeadingConstraint(redBox, toItem: self, constant: 8.0)
```

For some reasons `self` has been deallocated at this point.

I've included a workaround for this issue using the preprocessor `WORKAROUND`.

There should be three shared schems included in this project.

1. `Debug` - Runs Debug Configuration
2. `AdHoc` - Runs AdHoc Configuration w/ Zombies Enabled.
3. `Workaround` - Runs Workaround Configuration 

Running the `AdHoc` scheme will result in the crash I mentioned.
