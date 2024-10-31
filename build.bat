set VERSION=1.1.0
wix build -o MainMSI-%VERSION%-win64.msi -d VERSION=%VERSION% -ext WixToolset.UI.wixext MainMSI.wxs
wix build -o MainBundleDowngradeIssue_%VERSION%.exe -d VERSION=%VERSION% -ext WixToolset.BootstrapperApplications.wixext Bundle.wxs

set VERSION=1.0.0
wix build -o MainMSI-%VERSION%-win64.msi -d VERSION=%VERSION% -ext WixToolset.UI.wixext MainMSI.wxs
wix build -o MainBundleDowngradeIssue_%VERSION%.exe -d VERSION=%VERSION% -ext WixToolset.BootstrapperApplications.wixext Bundle.wxs