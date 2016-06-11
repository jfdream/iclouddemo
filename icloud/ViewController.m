//
//  ViewController.m
//  icloud
//
//  Created by jfdreamyang on 6/11/16.
//  Copyright © 2016 jfdreamyang. All rights reserved.
//

#import "ViewController.h"
#import <CloudKit/CloudKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CKRecordID * artworkRecordID=[[CKRecordID alloc]initWithRecordName:@"200"];
    
    
    CKRecord * artworkRecord=[[CKRecord alloc]initWithRecordType:@"Artfile" recordID:artworkRecordID];
    
    NSURL * file=[NSURL fileURLWithPath:@"/Users/jfdreamyang/Desktop/file.png"];
    CKAsset * asset=[[CKAsset alloc]initWithFileURL:file];
    artworkRecord[@"image"]=asset;
    
    CKContainer * myContainer=[CKContainer containerWithIdentifier:@"iCloud.com.soooner.icloud"];
    CKDatabase * db=[myContainer publicCloudDatabase];
    
    //保存文件以及获取文件
//    [db saveRecord:artworkRecord completionHandler:^(CKRecord * _Nullable record, NSError * _Nullable error) {
//        
//        NSLog(@"%@===%@",record,error);
//        
//    }];
//    [db fetchRecordWithID:artworkRecordID completionHandler:^(CKRecord * _Nullable record, NSError * _Nullable error) {
    
//        NSLog(@"%@",record.allKeys);
//        CKAsset * fileA=record[@"image"];
//        [[NSFileManager defaultManager] moveItemAtURL:fileA.fileURL toURL:[NSURL fileURLWithPath:@"/Users/jfdreamyang/Desktop/hello.png"] error:nil];
//        
//    }];
    
    //保存和获取普通key－－ value数据
//    artworkRecord[@"title"]=@"yangyudong";
//    artworkRecord[@"artist"]=@"Mei Chen";
//    artworkRecord[@"address"]=@"Fort Bragg, CA";
    
//    CKContainer * myContainer=[CKContainer defaultContainer];
//    CKDatabase * publicDatabase=[myContainer publicCloudDatabase];
//    CKContainer * myContainer=[CKContainer containerWithIdentifier:@"iCloud.com.soooner.icloud"];
//    CKDatabase * db=[myContainer publicCloudDatabase];
//    [db saveRecord:artworkRecord completionHandler:^(CKRecord * _Nullable record, NSError * _Nullable error) {
//       
//        NSLog(@"%@====%@",record,error);
//        
//    }];
//    
//    NSPredicate * predicate=[NSPredicate predicateWithFormat:@"title!=''"];
//    
//    CKQuery * q=[[CKQuery alloc]initWithRecordType:@"Artwork" predicate:predicate];
//    
//    [db performQuery:q inZoneWithID:nil completionHandler:^(NSArray<CKRecord *> * _Nullable results, NSError * _Nullable error) {
//       
//        NSLog(@"%@",results);
//        
//    }];
//    [db fetchRecordWithID:artworkRecordID completionHandler:^(CKRecord * _Nullable record, NSError * _Nullable error) {
//       
//        NSLog(@"%@",record);
//        
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
