#import <UIKit/UIKit.h>

__attribute__((constructor))
static void showAlertAfterLaunch() {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 3 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Văn Thành IOS "
                                                                       message:@"Nhớ Like And Subscribe"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Xong"
                                                     style:UIAlertActionStyleDefault
                                                   handler:nil];
        [ok setValue:[UIColor blueColor] forKey:@"titleTextColor"];
        [alert addAction:ok];
        UIAlertAction *openLink = [UIAlertAction actionWithTitle:@"Kênh YTB"
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * _Nonnull action) {
            NSURL *url = [NSURL URLWithString:@"https://youtube.com/@thanhdzso1"];
            if ([[UIApplication sharedApplication] canOpenURL:url]) {
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        }];
        [alert addAction:openLink];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert
                                                                                     animated:YES
                                                                                   completion:nil];


UIAlertAction *openLink = [UIAlertAction actionWithTitle:@"Kênh YTB"
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * _Nonnull action) {
            NSURL *url = [NSURL URLWithString:@"https://youtube.com/@thanhdzso1"];
            if ([[UIApplication sharedApplication] canOpenURL:url]) {
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        }];
        [alert addAction:openLink];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert
                                                                                     animated:YES
                                                                                   completion:nil];
    });
}


    

