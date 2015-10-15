# sample-ios-crash

Code Demonstrates what I believe is an issue with the Swift compiler's optimizer.

The most relevant file is `CustomView.swift`
The most relevant method is `_setup()` method in the `CustomView` class.

When project uses the `Debug` configuration (default debug configuration) everything is fine.    
When project uses the `AdHoc` configuration (default release configuration) an `EXC_BAD_ACCESS` occurs at line 67, shown below.

```
LayoutConstraintFactory.alignLeadingConstraint(redBox, toItem: self, constant: 8.0)
```

Running the project with the `AdHoc` configuration with Zombies enables produces the following message.

```
-[CompilerIssue.CustomView retain]: message sent to deallocated instance 0x7f8eaba46d10.
```

For some reasons `self` has not been allocated or has been deallocated at this point.

**I believe this may be a bug in the Swift Compiler's Optimizer**, since if I change to the `SWIFT_OPTIMIZATION_LEVEL` from `Fast [-O]` to either `[-Onone]` or `[-O -whole-module-optimization]` I do not get this error.

I've included a workaround for this issue using the preprocessor `WORKAROUND`.

There should be three shared schemes included in this project.

1. `Debug` - Runs Debug Configuration (Default Debug Configuration)
2. `AdHoc` - Runs AdHoc Configuration w/ Zombies Enabled. (Copy of Default Release Configuration)
3. `Workaround` - Runs Workaround Configuration (Copy of Default Release Configuration with `WORKAROUND` defined)

Running the `AdHoc` scheme will result in the crash I mentioned.


