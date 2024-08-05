# Octave-Uncertainty-RIA-Example

Example of application Reductive Interval Arithmetic method for estimating resultant expanded uncertainty usign GNU Octave.

## How to use this example

This example contains the 3 most important files `run_example`, `run_compare` and `run_multiple`. The remaining files are copies of the files contained in the [Octave-FWT-Utils](https://github.com/Kuszki/Octave-FWT-Utils) project.

### Script `run_example`

This script allows you to determine the value of the resultant expanded uncertainty for a given uncertainty vector of the expanded components of the error signal. This is the simplest example of the method application. The user specifies the number of error signals, the values ​​of their expanded uncertainties and the type of shape of the probability density function.

### Script `run_compare`

This script allows you to compare the results obtained with the discussed method with those obtained with the Monte-Carlo method and with those obtained assuming the fulfillment of the conditions of the central limit theorem. The results of the script are the values ​​of the resultant expanded uncertainty obtained using the indicated methods and the values ​​of the relative error in estimating these quantities in relation to the Monte-Carlo method. The user specifies the number of error signals, the range of possible extended uncertainty values ​​for these signals and indicates what shapes of the probability density functions the analyzed signals may have. The error signal parameters are randomized for each experiment according to the indicated parameters and displayed on the screen. The example shown is a single iteration of the experiment contained in the `run_multiple` file.

### Script `run_multiple`

The script is an extension of the one contained in the `run_compare` file. For the given parameters, it performs the indicated experiment `N` times and outputs the parameters of the relative error in estimating the expanded uncertainty value for the indicated methods, in relation to the results of the Monte-Carlo method.

## Requirements

- Recent version of GNU Octave or MATLAB[^1].
- Parallel package for GNU Octave[^2].
- Statistics package for GNU Octave.

[^1]: MATLAB usage requires minor changes in libraries due to some incompatibility.
[^2]: Optional - required to enable parallel computation of the `run_multiple` example.

## Credits

All other files are part of [Octave-FWT-Utils](https://github.com/Kuszki/Octave-FWT-Utils) project licensed under GPL-3.0 license.

## License

This project is licensed under GPL-3.0 license.
