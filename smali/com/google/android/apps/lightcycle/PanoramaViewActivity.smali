.class public Lcom/google/android/apps/lightcycle/PanoramaViewActivity;
.super Landroid/app/Activity;
.source "PanoramaViewActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->loadAndShowUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private fetchSharedPanoFile(Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 5
    .param p1, "landingPageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getMediumSizePanoUrlFromLandingPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "mediumSizePanoUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->showLoadingErrorAndExit()V

    .line 492
    :goto_0
    return-void

    .line 468
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "temp_pano.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    .local v2, "tempFile":Ljava/io/File;
    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Ljava/lang/String;Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 491
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static getMediumSizePanoUrlFromLandingPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "landingPageUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 507
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .local v2, "landingPageUri":Ljava/net/URI;
    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 517
    .local v7, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v5, 0x0

    .line 518
    .local v5, "panoBaseUrl":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    .line 519
    .local v6, "parameter":Lorg/apache/http/NameValuePair;
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "pano"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 520
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 524
    .end local v6    # "parameter":Lorg/apache/http/NameValuePair;
    :cond_1
    if-nez v5, :cond_2

    .line 537
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "landingPageUri":Ljava/net/URI;
    .end local v5    # "panoBaseUrl":Ljava/lang/String;
    .end local v7    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    return-object v4

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-object v9, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 528
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "landingPageUri":Ljava/net/URI;
    .restart local v5    # "panoBaseUrl":Ljava/lang/String;
    .restart local v7    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    const/16 v9, 0x2f

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 529
    .local v3, "lastSlash":I
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 533
    .local v8, "suffix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/s2048"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "mediumSizeUrl":Ljava/lang/String;
    const-string v9, "https://"

    const-string v10, "http://"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 536
    sget-object v9, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Medium Size URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSendImage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 234
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 235
    .local v0, "imageUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 236
    const-string v1, "Got filename from Send intent"

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 239
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getViewImage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 250
    .local v0, "imageUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 251
    const-string v1, "URI is null!"

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 256
    const-string v1, ""

    :goto_0
    return-object v1

    .line 253
    :cond_0
    const-string v1, "Got filename from View intent"

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isGlassDemoMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 559
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 560
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.apps.lightcycle.glass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 565
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isImageUsablePanorama(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAndShowUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "dogfoodUrl"    # Ljava/lang/String;

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->showLoadingErrorAndExit()V

    .line 282
    :goto_0
    return-void

    .line 272
    :cond_0
    const v1, 0x7f0b0090

    invoke-static {v1, p0}, Lcom/google/android/apps/lightcycle/util/Dialogs;->createProgressDialog(ILandroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 274
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 275
    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$2;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Landroid/app/ProgressDialog;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->fetchSharedPanoFile(Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V

    goto :goto_0
.end method

.method private onImageLoadingError(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 432
    const/4 v0, -0x1

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$5;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V

    invoke-static {v0, p1, p0, v1}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 438
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 425
    :cond_0
    return-void
.end method

.method private showLoadingErrorAndExit()V
    .locals 3

    .prologue
    .line 544
    const/4 v0, -0x1

    const v1, 0x7f0b008e

    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$7;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$7;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V

    invoke-static {v0, v1, p0, v2}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 551
    return-void
.end method

.method private writeStreamToTempFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "temp_pano.jpg"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 577
    .local v5, "tempFile":Ljava/io/File;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 578
    .local v4, "os":Ljava/io/OutputStream;
    const/16 v1, 0x1000

    .line 579
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 580
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 581
    .local v3, "len":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 582
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 585
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "filename":Ljava/lang/String;
    sget-object v6, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrote stream to temporary file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-object v2
.end method


# virtual methods
.method protected getImageFilename(Landroid/content/Intent;)Ljava/lang/String;
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 121
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "android.intent.extra.STREAM"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "uri":Landroid/net/Uri;
    check-cast v10, Landroid/net/Uri;

    .line 125
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v12, "filename"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "imageFilename":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 134
    if-nez v6, :cond_8

    .line 135
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "type":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Intent : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 138
    const-string v12, "android.intent.action.VIEW"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 139
    if-eqz v9, :cond_2

    .line 141
    const-string v12, "image/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getViewImage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 183
    :cond_1
    :goto_0
    if-nez v6, :cond_6

    .line 184
    const v12, 0x7f0b008e

    invoke-direct {p0, v12}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->onImageLoadingError(I)V

    .line 206
    .end local v0    # "action":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    :goto_1
    return-object v11

    .line 145
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v9    # "type":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "dataString":Ljava/lang/String;
    const-string v12, "https://panoramas.googleplex.com/s/"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 148
    const v12, 0x7f0b008d

    invoke-static {v12, p0}, Lcom/google/android/apps/lightcycle/util/Dialogs;->createProgressDialog(ILandroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 150
    .local v2, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 152
    const-string v12, "https://panoramas.googleplex.com/s/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, "token":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://goo.gl/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "gooGlUrl":Ljava/lang/String;
    new-instance v12, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$1;

    invoke-direct {v12, p0, v2}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$1;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Landroid/app/ProgressDialog;)V

    invoke-static {p0, v5, v12}, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;->expandAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V

    goto :goto_1

    .line 163
    .end local v2    # "dialog":Landroid/app/ProgressDialog;
    .end local v5    # "gooGlUrl":Ljava/lang/String;
    .end local v8    # "token":Ljava/lang/String;
    :cond_3
    const-string v12, "https://panoramas.googleplex.com"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 165
    invoke-direct {p0, v1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->loadAndShowUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    .end local v1    # "dataString":Ljava/lang/String;
    :cond_4
    const-string v12, "android.intent.action.SEND"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz v9, :cond_5

    .line 171
    const-string v12, "image/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getSendImage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 177
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 178
    .local v4, "extras":Landroid/os/Bundle;
    const-string v12, "filename"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    const-string v12, "Got filename from intent extras."

    invoke-static {v12}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_6
    invoke-direct {p0, v6}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->isImageUsablePanorama(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 192
    const v12, 0x7f0b008f

    invoke-direct {p0, v12}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->onImageLoadingError(I)V

    goto :goto_1

    .line 198
    .end local v0    # "action":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 199
    .local v7, "is":Ljava/io/InputStream;
    invoke-direct {p0, v7}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->writeStreamToTempFile(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .end local v7    # "is":Ljava/io/InputStream;
    :cond_8
    move-object v11, v6

    .line 206
    goto/16 :goto_1

    .line 200
    :catch_0
    move-exception v3

    .line 201
    .local v3, "e":Ljava/io/IOException;
    sget-object v12, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    const-string v13, "Could not open file. "

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 216
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, "proj":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 217
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 218
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 219
    const-string v0, ""

    .line 224
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 223
    .local v6, "columnIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 224
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected isCompassModeEnabled()Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method protected isPreventStart()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->isGlassDemoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const/4 v1, 0x0

    .line 383
    :goto_0
    return v1

    .line 354
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 355
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 358
    :cond_1
    const/4 v13, 0x0

    .line 359
    .local v13, "rangeAxisX":Landroid/view/InputDevice$MotionRange;
    const/4 v14, 0x0

    .line 360
    .local v14, "rangeAxisY":Landroid/view/InputDevice$MotionRange;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v10

    .line 361
    .local v10, "device":Landroid/view/InputDevice;
    if-eqz v10, :cond_2

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v13

    .line 363
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v14

    .line 367
    :cond_2
    if-eqz v13, :cond_3

    if-nez v14, :cond_4

    .line 368
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 372
    :cond_4
    invoke-virtual {v13}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v11

    .line 373
    .local v11, "maxX":F
    invoke-virtual {v14}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v12

    .line 374
    .local v12, "maxY":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 375
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v15, v1, v11

    .line 376
    .local v15, "scaleX":F
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v16, v1, v12

    .line 377
    .local v16, "scaleY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float v6, v1, v15

    .line 378
    .local v6, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float v7, v1, v16

    .line 379
    .local v7, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 382
    .local v17, "touchEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->processMotionEvent(Landroid/view/MotionEvent;)Z

    .line 383
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->setIntent(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 393
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 396
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->releaseWakeLock()V

    .line 399
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 402
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->isPreventStart()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->finish()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/UiUtil;->switchSystemUiToLightsOut(Landroid/view/Window;)V

    .line 95
    new-instance v2, Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getImageFilename(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "imageFilename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->isCompassModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->start(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->releaseWakeLock()V

    .line 111
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 112
    .local v1, "pm":Landroid/os/PowerManager;
    const v2, 0x2000001a

    sget-object v3, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 114
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->showFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showFile(Ljava/lang/String;)V
    .locals 12
    .param p1, "imageFilename"    # Ljava/lang/String;

    .prologue
    const v11, 0x7f0b0091

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 292
    sget-object v8, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempting to show panorama : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$3;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V

    .line 300
    .local v1, "finishActivityCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v3

    .line 301
    .local v3, "panoMetadata":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    if-nez v3, :cond_0

    .line 302
    const v6, 0x7f0b0092

    invoke-static {v11, v6, p0, v1}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 345
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 310
    sget-object v6, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not load file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const v6, 0x7f0b0093

    invoke-static {v11, v6, p0, v1}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    goto :goto_0

    .line 316
    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xa

    if-ge v8, v9, :cond_3

    move v5, v6

    .line 317
    .local v5, "useLegacyTileProvider":Z
    :goto_1
    if-eqz v5, :cond_4

    new-instance v4, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;

    invoke-direct {v4, v2}, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;-><init>(Ljava/io/File;)V

    .line 320
    .local v4, "tileProvider":Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    :goto_2
    const/4 v0, 0x1

    .line 321
    .local v0, "enableIntroAnimation":Z
    new-instance v8, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    new-instance v9, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-direct {v9, v4, v3}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;-><init>(Lcom/google/android/apps/lightcycle/viewer/TileProvider;Lcom/google/android/apps/lightcycle/util/PanoMetadata;)V

    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->isGlassDemoMode()Z

    move-result v10

    if-nez v10, :cond_5

    :goto_3
    invoke-direct {v8, p0, v9, v6}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;Z)V

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    .line 325
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->isGlassDemoMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 327
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    new-instance v7, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;

    invoke-direct {v7, p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V

    invoke-virtual {v6, v7}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setAutoRotationCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 343
    :cond_2
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-virtual {p0, v6}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->setContentView(Landroid/view/View;)V

    .line 344
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setSensorReader(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    goto :goto_0

    .end local v0    # "enableIntroAnimation":Z
    .end local v4    # "tileProvider":Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    .end local v5    # "useLegacyTileProvider":Z
    :cond_3
    move v5, v7

    .line 316
    goto :goto_1

    .line 317
    .restart local v5    # "useLegacyTileProvider":Z
    :cond_4
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->fromFile(Ljava/io/File;)Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-result-object v4

    goto :goto_2

    .restart local v0    # "enableIntroAnimation":Z
    .restart local v4    # "tileProvider":Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    :cond_5
    move v6, v7

    .line 321
    goto :goto_3
.end method
