.class public Lcom/android/server/pm/ExtraPackageManagerServices;
.super Ljava/lang/Object;
.source "ExtraPackageManagerServices.java"


# static fields
.field private static final AUTO_START_PROPERTY:Ljava/lang/String; = "persist.sys.auto-start.once"

.field private static final BLOCK_APPS:[[Ljava/lang/String; = null

.field private static final INSTALL_DIR:Ljava/lang/String; = "/data/app/"

.field private static final PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/system/preinstall_history"

.field private static final REINSTALL_MARK_FILE:Ljava/lang/String; = "reinstall_apps"

.field private static final TAG:Ljava/lang/String; = "ExtraPackageManagerServices"

.field private static final WHITE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cn.cj.pe"

    aput-object v1, v0, v3

    const-string v1, "cn.com.fetion"

    aput-object v1, v0, v4

    const-string v1, "cn.etouch.ecalendar"

    aput-object v1, v0, v5

    const-string v1, "com.alibaba.mobileim"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "com.corp21cn.mail189"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.duowan.mobile"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.hy.minifetion"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.immomo.momo"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.miui.weather2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.moji.mjweather"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.netease.mobimail"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.skype.raider"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.skype.rover"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.taobao.wwseller"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.tencent.minihd.qq"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.whatsapp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.when.android.calendar365"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.xiaomi.channel"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.zdworks.android.zdcalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.zdworks.android.zdclock"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "jp.naver.line.android"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sina.mobile.tianqitong"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->WHITE_LIST:[Ljava/lang/String;

    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.jeejen.family.miui"

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.miui.home"

    aput-object v2, v1, v3

    const-string v2, "com.android.mms"

    aput-object v2, v1, v4

    const-string v2, "com.android.contacts"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->BLOCK_APPS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockAutoStartedApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;)V
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "curPkgSettings"

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "persist.sys.auto-start.once"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->blockAutoStartedAppInternal(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;Z)V

    goto :goto_0
.end method

.method private static blockAutoStartedAppInternal(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;Z)V
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "curPkgSettings"
    .parameter "forceApply"

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x4000

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .local v4, uid:I
    invoke-static {v4}, Landroid/os/UserId;->getUserId(I)I

    move-result v5

    .local v5, userId:I
    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/android/server/pm/ExtraPackageManagerServices;->isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->inNameWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .local v6, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_0

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v0, v6, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v3

    iput v0, v6, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .end local v6           #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, p2

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->setPackageStoppedStateLPw(Ljava/lang/String;ZZII)Z

    :cond_1
    return-void
.end method

.method public static checkPackageForUserModeLPw(Lcom/android/server/pm/PackageSetting;)V
    .locals 8
    .parameter "ps"

    .prologue
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v5

    .local v5, userMode:I
    const/4 v4, 0x0

    .local v4, mode:I
    :goto_0
    sget-object v6, Lcom/android/server/pm/ExtraPackageManagerServices;->BLOCK_APPS:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_4

    sget-object v6, Lcom/android/server/pm/ExtraPackageManagerServices;->BLOCK_APPS:[[Ljava/lang/String;

    aget-object v1, v6, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .local v0, app:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-eq v5, v4, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .end local v0           #app:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    return-void
.end method

.method private static deleteOdexFile(Ljava/lang/String;)V
    .locals 4
    .parameter "apkName"

    .prologue
    const-string v2, ".apk"

    const-string v3, ".odex"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .local v1, odexName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, installOdex:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static inCloudWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    sget-object v0, Lmiui/provider/CloudAppControll$TAG;->TAG_AUTO_START:Lmiui/provider/CloudAppControll$TAG;

    invoke-static {p0, v0, p1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inNameWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    invoke-static {p1}, Lcom/android/server/pm/ExtraPackageManagerServices;->inWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/pm/ExtraPackageManagerServices;->inCloudWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inWhiteList(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/server/pm/ExtraPackageManagerServices;->WHITE_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/server/pm/ExtraPackageManagerServices;->WHITE_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static installPreinstallApp(Ljava/io/File;)V
    .locals 4
    .parameter "apkFile"

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, apkName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, installApk:Ljava/io/File;
    invoke-static {p0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-static {v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->deleteOdexFile(Ljava/lang/String;)V

    return-void
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    if-eqz p0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static packagePermissionsUpdate(Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .parameter "curPkgSettings"
    .parameter "ps"
    .parameter "pkg"

    .prologue
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_1

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .local v2, gp:Lcom/android/server/pm/GrantedPermissions;
    :goto_0
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .local v1, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    .local v5, perm:Ljava/lang/String;
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v7, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .end local v5           #perm:Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #bp:Lcom/android/server/pm/BasePermission;
    .end local v2           #gp:Lcom/android/server/pm/GrantedPermissions;
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    move-object v2, p1

    goto :goto_0

    .restart local v0       #N:I
    .restart local v1       #bp:Lcom/android/server/pm/BasePermission;
    .restart local v2       #gp:Lcom/android/server/pm/GrantedPermissions;
    .restart local v3       #i:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #perm:Ljava/lang/String;
    :cond_2
    iget-boolean v6, p1, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    if-nez v6, :cond_0

    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v7, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto :goto_2

    .end local v1           #bp:Lcom/android/server/pm/BasePermission;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #perm:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 4
    .parameter "apkFile"

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .local v0, apkPath:Ljava/lang/String;
    const/4 v1, 0x4

    .local v1, parseFlags:I
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .local v2, pp:Landroid/content/pm/PackageParser;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    return-object v3
.end method

.method public static performPreinstallApp(Lcom/android/server/pm/Settings;)V
    .locals 17
    .parameter "curPkgSettings"

    .prologue
    invoke-static {}, Lmiui/os/Environment;->getMIUIPreinstallAppDirectoryPath()Ljava/lang/String;

    move-result-object v1

    .local v1, dir:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, preinstallAppDir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .local v8, preinstallAppNames:[Ljava/lang/String;
    if-nez v8, :cond_1

    const-string v14, "ExtraPackageManagerServices"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No files in preinstall app dir "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "/data/system/preinstall_history"

    invoke-static {v14}, Lcom/android/server/pm/ExtraPackageManagerServices;->readPreinstallAppHistory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, installHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "reinstall_apps"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, reinstallMarkFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    .local v5, isNeedReinstall:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v14, v8

    if-ge v3, v14, :cond_9

    aget-object v9, v8, v3

    .local v9, preinstallName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/pm/ExtraPackageManagerServices;->isPackageFilename(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .local v2, hasRecorded:Z
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v6, preinstallApp:Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/pm/ExtraPackageManagerServices;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    .local v10, preinstallPkg:Landroid/content/pm/PackageParser$Package;
    if-nez v10, :cond_4

    const-string v14, "ExtraPackageManagerServices"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "preinstall app "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " package parser fail!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v14, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .local v13, userPkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_7

    iget v14, v10, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v15, v13, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-le v14, v15, :cond_6

    iget v14, v13, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_5

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .local v12, userApkFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/pm/ExtraPackageManagerServices;->deleteOdexFile(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .end local v12           #userApkFile:Ljava/io/File;
    :cond_5
    invoke-static {v6}, Lcom/android/server/pm/ExtraPackageManagerServices;->installPreinstallApp(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-static {v0, v13, v10}, Lcom/android/server/pm/ExtraPackageManagerServices;->packagePermissionsUpdate(Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    :cond_6
    :goto_3
    if-nez v2, :cond_2

    const-string v14, "/data/system/preinstall_history"

    invoke-static {v14, v9}, Lcom/android/server/pm/ExtraPackageManagerServices;->writePreinstallAppHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    if-eqz v5, :cond_6

    :cond_8
    invoke-static {v6}, Lcom/android/server/pm/ExtraPackageManagerServices;->installPreinstallApp(Ljava/io/File;)V

    goto :goto_3

    .end local v2           #hasRecorded:Z
    .end local v6           #preinstallApp:Ljava/io/File;
    .end local v9           #preinstallName:Ljava/lang/String;
    .end local v10           #preinstallPkg:Landroid/content/pm/PackageParser$Package;
    .end local v13           #userPkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_9
    if-eqz v5, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method public static postProcessNewInstall(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;)V
    .locals 1
    .parameter "context"
    .parameter "info"
    .parameter "curPkgSettings"

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->blockAutoStartedAppInternal(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;Z)V

    goto :goto_0
.end method

.method public static postScanPackages()V
    .locals 2

    .prologue
    const-string v0, "persist.sys.auto-start.once"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static readPreinstallAppHistory(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, hisList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, installHistoryFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .end local v3           #installHistoryFile:Ljava/io/File;
    :goto_0
    return-object v2

    .restart local v3       #installHistoryFile:Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .local v1, fileReader:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, bufferReader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .local v4, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v1           #fileReader:Ljava/io/FileReader;
    .end local v3           #installHistoryFile:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0

    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    .restart local v3       #installHistoryFile:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private static writePreinstallAppHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"
    .parameter "installPkgName"

    .prologue
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, installHistoryFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .local v1, fileWriter:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .local v0, bufferWriter:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v1           #fileWriter:Ljava/io/FileWriter;
    .end local v2           #installHistoryFile:Ljava/io/File;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method
