.class Lcom/google/android/picasasync/GDataUploader;
.super Ljava/lang/Object;
.source "GDataUploader.java"

# interfaces
.implements Lcom/google/android/picasasync/Uploader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/GDataUploader$1;,
        Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    }
.end annotation


# static fields
.field private static final RE_RANGE_HEADER:Ljava/util/regex/Pattern;

.field private static sUserAgent:Ljava/lang/String;


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mAuthorizer:Lcom/google/android/picasasync/Authorizer;

.field private mContext:Landroid/content/Context;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mListener:Lcom/google/android/picasasync/Uploader$UploadProgressListener;

.field private mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "bytes=(\\d+)-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/GDataUploader;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/android/picasasync/GDataUploader;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {p1}, Lcom/google/android/picasasync/GDataUploader;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasastore/HttpUtils;->createHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 103
    return-void
.end method

.method private executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 8
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$UnauthorizedException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 391
    .local v2, "startTime":J
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 392
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDuration(J)V

    .line 393
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 396
    .local v4, "statusCode":I
    const/16 v5, 0x191

    if-eq v4, v5, :cond_0

    const/16 v5, 0x193

    if-ne v4, v5, :cond_2

    .line 399
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthorizer:Lcom/google/android/picasasync/Authorizer;

    iget-object v6, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v6}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/picasasync/Authorizer;->getFreshAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    .line 400
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/picasasync/Uploader$UnauthorizedException;

    const-string v6, "null auth token"

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/Uploader$UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 401
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    const-string v5, "UploadsManager"

    const-string v6, "authentication canceled"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    new-instance v5, Lcom/google/android/picasasync/Uploader$UnauthorizedException;

    invoke-direct {v5, v0}, Lcom/google/android/picasasync/Uploader$UnauthorizedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 405
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 408
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "UploadsManager"

    const-string v6, "authentication failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    throw v0

    .line 410
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 411
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    const-string v5, "UploadsManager"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    new-instance v5, Lcom/google/android/picasasync/Uploader$UnauthorizedException;

    invoke-direct {v5, v0}, Lcom/google/android/picasasync/Uploader$UnauthorizedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 415
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :cond_1
    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GoogleLogin auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v5, "UploadsManager"

    const-string v6, "executeWithAuthRetry: attempt #2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 418
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDuration(J)V

    .line 421
    :cond_2
    return-object v1
.end method

.method private static getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;
    .locals 5
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 538
    .local v0, "entity":Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 539
    invoke-static {v0}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    .line 540
    const/4 v0, 0x0

    .line 542
    :cond_0
    return-object v0
.end method

.method private static getInitialRequest(Landroid/net/Uri;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "requestTemplate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 442
    .local v7, "request":Lorg/apache/http/client/methods/HttpPost;
    const/4 v3, 0x0

    .line 443
    .local v3, "headersString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 444
    .local v6, "metadataString":Ljava/lang/String;
    const-string v9, "\r\n\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 448
    .local v0, "emptyLine":I
    if-lez v0, :cond_0

    .line 449
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 456
    :goto_0
    invoke-static {v3}, Lcom/google/android/picasasync/GDataUploader;->parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 457
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 458
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 459
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v7, v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 452
    .end local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    move-object v3, p1

    goto :goto_0

    .line 463
    .restart local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v6, :cond_2

    .line 464
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v9, "UTF-8"

    invoke-direct {v1, v6, v9}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .local v1, "entity":Lorg/apache/http/entity/StringEntity;
    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v7, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 469
    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_2
    return-object v7
.end method

.method private static getResumeRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .param p0, "uploadUrl"    # Ljava/lang/String;

    .prologue
    .line 476
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, "request":Lorg/apache/http/client/methods/HttpPut;
    const-string v1, "Content-Range"

    const-string v2, "bytes */*"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-object v0
.end method

.method private static getUploadRequest(Ljava/lang/String;Ljava/lang/String;JIJ[B)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 11
    .param p0, "uploadUrl"    # Ljava/lang/String;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # I
    .param p5, "totalBytes"    # J
    .param p7, "data"    # [B

    .prologue
    .line 490
    new-instance v6, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 491
    .local v6, "request":Lorg/apache/http/client/methods/HttpPut;
    int-to-long v7, p4

    add-long/2addr v7, p2

    const-wide/16 v9, 0x1

    sub-long v4, v7, v9

    .line 492
    .local v4, "lastByte":J
    const-string v7, "Content-Range"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p5

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v7, "Content-Type"

    invoke-virtual {v6, v7, p1}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v7, 0x0

    move-object/from16 v0, p7

    invoke-direct {v2, v0, v7, p4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 497
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v7, p4

    invoke-direct {v3, v2, v7, v8}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 498
    .local v3, "entity":Lorg/apache/http/entity/InputStreamEntity;
    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v6, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 500
    return-object v6
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 687
    sget-object v2, Lcom/google/android/picasasync/GDataUploader;->sUserAgent:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 690
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 695
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    const-string v2, "%s/%s; %s/%s/%s/%s; %s/%s/%s/%d"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/picasasync/GDataUploader;->sUserAgent:Ljava/lang/String;

    .line 707
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    sget-object v2, Lcom/google/android/picasasync/GDataUploader;->sUserAgent:Ljava/lang/String;

    return-object v2

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getPackageInfo failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isIncompeteStatusCode(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 508
    const/16 v0, 0x134

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSuccessStatusCode(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 504
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newUploadedEntry(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)Lcom/google/android/picasasync/UploadedEntry;
    .locals 10
    .param p1, "response"    # Lcom/google/android/picasasync/GDataUploader$GDataResponse;

    .prologue
    .line 375
    new-instance v0, Lcom/google/android/picasasync/UploadedEntry;

    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    iget-wide v2, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoId:J

    iget-wide v4, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoSize:J

    iget-wide v6, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->timestamp:J

    iget-object v8, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoUrl:Ljava/lang/String;

    iget-object v9, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->fingerprint:Lcom/android/gallery3d/common/Fingerprint;

    invoke-virtual {v9}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/picasasync/UploadedEntry;-><init>(Lcom/google/android/picasasync/UploadTaskEntry;JJJLjava/lang/String;[B)V

    return-object v0
.end method

.method private static parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .param p0, "headersString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 562
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "\r\n"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "lines":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 564
    .local v4, "line":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, "pair":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 566
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "pair":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static parseRangeHeaderEndByte(Ljava/lang/String;)J
    .locals 5
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    .line 529
    if-eqz p0, :cond_0

    .line 530
    sget-object v1, Lcom/google/android/picasasync/GDataUploader;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 531
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 533
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    .locals 4
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$UploadException;
        }
    .end annotation

    .prologue
    .line 426
    if-nez p1, :cond_0

    new-instance v2, Lcom/google/android/picasasync/Uploader$UploadException;

    const-string v3, "null HttpEntity in response"

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_0
    new-instance v0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/picasasync/GDataUploader$GDataResponse;-><init>(Lcom/google/android/picasasync/GDataUploader$1;)V

    .line 428
    .local v0, "contentHandler":Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 430
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v2, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v1, v2, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 434
    invoke-virtual {v0}, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->validateResult()V

    .line 435
    return-object v0

    .line 432
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method private static readFullyOrToEof(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "array"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "count":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 518
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 519
    .local v1, "n":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 522
    .end local v1    # "n":I
    :cond_0
    return v0

    .line 520
    .restart local v1    # "n":I
    :cond_1
    add-int/2addr v0, v1

    .line 521
    goto :goto_0
.end method

.method private resetUpload()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setUploadUrl(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 386
    return-void
.end method

.method private resume(Ljava/io/InputStream;)Lcom/google/android/picasasync/UploadedEntry;
    .locals 11
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$PicasaQuotaException;,
            Lorg/xml/sax/SAXException;,
            Lcom/google/android/picasasync/Uploader$UploadException;,
            Lcom/google/android/picasasync/Uploader$LocalIoException;,
            Lcom/google/android/picasasync/Uploader$MediaFileChangedException;,
            Lcom/google/android/picasasync/Uploader$RestartException;,
            Lcom/google/android/picasasync/Uploader$UnauthorizedException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v8, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v8}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/picasasync/GDataUploader;->getResumeRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    .line 222
    .local v6, "resumeRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, v6}, Lcom/google/android/picasasync/GDataUploader;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 223
    .local v7, "resumeResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 224
    .local v0, "code":I
    invoke-static {v7}, Lcom/google/android/picasasync/GDataUploader;->getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 225
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_0

    .line 226
    const-string v8, "UploadsManager"

    const-string v9, "  Entity: content length was 0."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/picasasync/GDataUploader;->isIncompeteStatusCode(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "range"

    invoke-interface {v7, v8}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 233
    const-string v8, "range"

    invoke-interface {v7, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 234
    .local v4, "rangeHeader":Lorg/apache/http/Header;
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/picasasync/GDataUploader;->parseRangeHeaderEndByte(Ljava/lang/String;)J

    move-result-wide v2

    .line 235
    .local v2, "offset":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/google/android/picasasync/GDataUploader;->resetUpload()V

    .line 237
    new-instance v8, Lcom/google/android/picasasync/Uploader$RestartException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "negative range offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/picasasync/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v2    # "offset":J
    .end local v4    # "rangeHeader":Lorg/apache/http/Header;
    :catchall_0
    move-exception v8

    invoke-static {v1}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    throw v8

    .line 239
    .restart local v2    # "offset":J
    .restart local v4    # "rangeHeader":Lorg/apache/http/Header;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 240
    const/high16 v8, 0x40000

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    .line 241
    iget-object v8, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v8, v2, v3}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 242
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/GDataUploader;->uploadChunks(Ljava/io/InputStream;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 258
    invoke-static {v1}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    .end local v2    # "offset":J
    .end local v4    # "rangeHeader":Lorg/apache/http/Header;
    :goto_0
    return-object v8

    .line 243
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/google/android/picasasync/GDataUploader;->isSuccessStatusCode(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 244
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/GDataUploader;->parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/picasasync/GDataUploader$GDataResponse;

    move-result-object v5

    .line 245
    .local v5, "response":Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    invoke-direct {p0, v5}, Lcom/google/android/picasasync/GDataUploader;->throwIfQuotaError(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)V

    .line 246
    const-string v8, "UploadsManager"

    const-string v9, "nothing to resume, upload already completed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v8, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    iget-object v9, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v9}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 248
    invoke-direct {p0, v5}, Lcom/google/android/picasasync/GDataUploader;->newUploadedEntry(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 258
    invoke-static {v1}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 249
    .end local v5    # "response":Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    :cond_3
    const/16 v8, 0x191

    if-ne v0, v8, :cond_4

    .line 251
    :try_start_3
    new-instance v8, Lcom/google/android/picasasync/Uploader$UnauthorizedException;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/picasasync/Uploader$UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 253
    :cond_4
    invoke-direct {p0}, Lcom/google/android/picasasync/GDataUploader;->resetUpload()V

    .line 254
    new-instance v8, Lcom/google/android/picasasync/Uploader$RestartException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected resume response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/picasasync/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static safeConsumeContent(Lorg/apache/http/HttpEntity;)V
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 552
    if-eqz p0, :cond_0

    .line 554
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private start(Ljava/io/InputStream;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/picasasync/UploadedEntry;
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "requestTemplate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$PicasaQuotaException;,
            Lorg/xml/sax/SAXException;,
            Lcom/google/android/picasasync/Uploader$UploadException;,
            Lcom/google/android/picasasync/Uploader$MediaFileChangedException;,
            Lcom/google/android/picasasync/Uploader$UnauthorizedException;,
            Lcom/google/android/picasasync/Uploader$RestartException;,
            Lcom/google/android/picasasync/Uploader$LocalIoException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p2, p3}, Lcom/google/android/picasasync/GDataUploader;->getInitialRequest(Landroid/net/Uri;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 180
    .local v2, "initialRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, v2}, Lcom/google/android/picasasync/GDataUploader;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 181
    .local v3, "initialResponse":Lorg/apache/http/HttpResponse;
    invoke-static {v3}, Lcom/google/android/picasasync/GDataUploader;->getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 183
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 186
    .local v0, "code":I
    :try_start_0
    invoke-static {v0}, Lcom/google/android/picasasync/GDataUploader;->isSuccessStatusCode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/GDataUploader;->parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/picasasync/GDataUploader$GDataResponse;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/picasasync/GDataUploader;->throwIfQuotaError(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)V

    .line 188
    :cond_0
    const-string v5, "Location"

    invoke-interface {v3, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 189
    .local v4, "locationHeader":Lorg/apache/http/Header;
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/picasasync/UploadTaskEntry;->setUploadUrl(Ljava/lang/String;)V

    .line 190
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 191
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/GDataUploader;->uploadChunks(Ljava/io/InputStream;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 213
    invoke-static {v1}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    return-object v5

    .line 192
    .end local v4    # "locationHeader":Lorg/apache/http/Header;
    :cond_1
    const/16 v5, 0x190

    if-ne v0, v5, :cond_2

    .line 195
    :try_start_1
    new-instance v5, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload failed (bad payload, file too large) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    throw v5

    .line 198
    :cond_2
    const/16 v5, 0x191

    if-ne v0, v5, :cond_3

    .line 200
    :try_start_2
    new-instance v5, Lcom/google/android/picasasync/Uploader$UnauthorizedException;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/Uploader$UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_3
    const/16 v5, 0x1f4

    if-lt v0, v5, :cond_4

    const/16 v5, 0x258

    if-ge v0, v5, :cond_4

    .line 204
    new-instance v5, Lcom/google/android/picasasync/Uploader$RestartException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload transient error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 209
    :cond_4
    new-instance v5, Lcom/google/android/picasasync/Uploader$UploadException;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private throwIfQuotaError(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/picasasync/Uploader$PicasaQuotaException;
        }
    .end annotation

    .prologue
    .line 546
    if-eqz p1, :cond_0

    const-string v0, "LimitQuota"

    iget-object v1, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Lcom/google/android/picasasync/Uploader$PicasaQuotaException;

    iget-object v1, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->errorCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/Uploader$PicasaQuotaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    return-void
.end method

.method private uploadChunks(Ljava/io/InputStream;)Lcom/google/android/picasasync/UploadedEntry;
    .locals 24
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$PicasaQuotaException;,
            Lorg/xml/sax/SAXException;,
            Lcom/google/android/picasasync/Uploader$UploadException;,
            Lcom/google/android/picasasync/Uploader$MediaFileChangedException;,
            Lcom/google/android/picasasync/Uploader$RestartException;,
            Lcom/google/android/picasasync/Uploader$LocalIoException;,
            Lcom/google/android/picasasync/Uploader$UnauthorizedException;
        }
    .end annotation

    .prologue
    .line 266
    const/high16 v2, 0x40000

    new-array v9, v2, [B

    .line 268
    .local v9, "buffer":[B
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesUploaded()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    cmp-long v2, v2, v7

    if-gez v2, :cond_d

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mListener:Lcom/google/android/picasasync/Uploader$UploadProgressListener;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mListener:Lcom/google/android/picasasync/Uploader$UploadProgressListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-interface {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadProgressListener;->onProgress(Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 270
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->isUploading()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 368
    :goto_1
    return-object v2

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesUploaded()J

    move-result-wide v4

    .line 274
    .local v4, "offset":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v2

    sub-long/2addr v2, v4

    long-to-int v6, v2

    .line 275
    .local v6, "length":I
    const/high16 v2, 0x40000

    if-gt v6, v2, :cond_4

    const/16 v17, 0x1

    .line 276
    .local v17, "lastChunk":Z
    :goto_2
    if-nez v17, :cond_2

    const/high16 v6, 0x40000

    .line 279
    :cond_2
    const/high16 v2, 0x40000

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 284
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v9, v2, v6}, Lcom/google/android/picasasync/GDataUploader;->readFullyOrToEof(Ljava/io/InputStream;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 289
    .local v19, "read":I
    if-nez v17, :cond_3

    move/from16 v0, v19

    if-eq v0, v6, :cond_5

    .line 291
    :cond_3
    const/4 v2, 0x1

    new-array v12, v2, [J

    .line 292
    .local v12, "byteCount":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/android/gallery3d/common/Fingerprint;->fromInputStream(Ljava/io/InputStream;[J)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v16

    .line 295
    .local v16, "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/common/Fingerprint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 300
    .local v14, "contentUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v23

    .line 302
    .local v23, "uploadUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/UploadTaskEntry;->setUploadUrl(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const/4 v3, 0x0

    aget-wide v7, v12, v3

    invoke-virtual {v2, v7, v8}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesTotal(J)V

    .line 306
    new-instance v2, Lcom/google/android/picasasync/Uploader$MediaFileChangedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPLOAD_SIZE_DATA_MISMATCH: fingerprint changed; uri="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",uploadUrl="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$MediaFileChangedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    .end local v12    # "byteCount":[J
    .end local v14    # "contentUri":Ljava/lang/String;
    .end local v16    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    .end local v17    # "lastChunk":Z
    .end local v19    # "read":I
    .end local v23    # "uploadUrl":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 285
    .restart local v17    # "lastChunk":Z
    :catch_0
    move-exception v15

    .line 286
    .local v15, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/android/picasasync/Uploader$LocalIoException;

    invoke-direct {v2, v15}, Lcom/google/android/picasasync/Uploader$LocalIoException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 313
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v19    # "read":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    invoke-static/range {v2 .. v9}, Lcom/google/android/picasasync/GDataUploader;->getUploadRequest(Ljava/lang/String;Ljava/lang/String;JIJ[B)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v21

    .line 320
    .local v21, "uploadRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/GDataUploader;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 324
    .local v22, "uploadResponse":Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 325
    .local v13, "code":I
    invoke-static {v13}, Lcom/google/android/picasasync/GDataUploader;->isSuccessStatusCode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 326
    invoke-static/range {v22 .. v22}, Lcom/google/android/picasasync/GDataUploader;->getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/picasasync/GDataUploader;->parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/picasasync/GDataUploader$GDataResponse;

    move-result-object v20

    .line 327
    .local v20, "response":Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/GDataUploader;->throwIfQuotaError(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 331
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpCount(J)V

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/GDataUploader;->newUploadedEntry(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 368
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_1

    .line 333
    .end local v20    # "response":Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    :cond_6
    :try_start_2
    invoke-static {v13}, Lcom/google/android/picasasync/GDataUploader;->isIncompeteStatusCode(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 335
    const-string v2, "range"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v18

    .line 336
    .local v18, "rangeHeader":Lorg/apache/http/Header;
    if-eqz v18, :cond_7

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasasync/GDataUploader;->parseRangeHeaderEndByte(Ljava/lang/String;)J

    move-result-wide v10

    .line 339
    .local v10, "actualOffset":J
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gez v2, :cond_8

    .line 340
    new-instance v2, Lcom/google/android/picasasync/Uploader$UploadException;

    const-string v3, "malformed or missing range header for subsequent upload"

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    .end local v10    # "actualOffset":J
    .end local v13    # "code":I
    .end local v18    # "rangeHeader":Lorg/apache/http/Header;
    :catchall_0
    move-exception v2

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    throw v2

    .line 336
    .restart local v13    # "code":I
    .restart local v18    # "rangeHeader":Lorg/apache/http/Header;
    :cond_7
    const-wide/16 v10, -0x1

    goto :goto_3

    .line 344
    .restart local v10    # "actualOffset":J
    :cond_8
    int-to-long v2, v6

    add-long/2addr v2, v4

    cmp-long v2, v10, v2

    if-gez v2, :cond_9

    .line 346
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->reset()V

    .line 347
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/InputStream;->skip(J)J

    .line 349
    :cond_9
    move-wide v4, v10

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 352
    .end local v10    # "actualOffset":J
    .end local v18    # "rangeHeader":Lorg/apache/http/Header;
    :cond_a
    const/16 v2, 0x190

    if-ne v13, v2, :cond_b

    .line 355
    :try_start_4
    new-instance v2, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload failed (bad payload, file too large) "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :cond_b
    const/16 v2, 0x1f4

    if-lt v13, v2, :cond_c

    const/16 v2, 0x258

    if-ge v13, v2, :cond_c

    .line 361
    new-instance v2, Lcom/google/android/picasasync/Uploader$RestartException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload transient error"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_c
    new-instance v2, Lcom/google/android/picasasync/Uploader$UploadException;

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 371
    .end local v4    # "offset":J
    .end local v6    # "length":I
    .end local v13    # "code":I
    .end local v17    # "lastChunk":Z
    .end local v19    # "read":I
    .end local v21    # "uploadRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v22    # "uploadResponse":Lorg/apache/http/HttpResponse;
    :cond_d
    new-instance v2, Lcom/google/android/picasasync/Uploader$UploadException;

    const-string v3, "upload is done but no server confirmation"

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 171
    return-void
.end method

.method public upload(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;)Lcom/google/android/picasasync/UploadedEntry;
    .locals 9
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "listener"    # Lcom/google/android/picasasync/Uploader$UploadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/picasasync/Uploader$UploadException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$RestartException;,
            Lcom/google/android/picasasync/Uploader$MediaFileChangedException;,
            Lcom/google/android/picasasync/Uploader$UnauthorizedException;,
            Lcom/google/android/picasasync/Uploader$PicasaQuotaException;,
            Lcom/google/android/picasasync/Uploader$LocalIoException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    .line 111
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Zero length file can\'t be uploaded"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 116
    iput-object p2, p0, Lcom/google/android/picasasync/GDataUploader;->mListener:Lcom/google/android/picasasync/Uploader$UploadProgressListener;

    .line 117
    new-instance v5, Lcom/google/android/picasasync/Authorizer;

    iget-object v6, p0, Lcom/google/android/picasasync/GDataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAuthTokenType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/picasasync/Authorizer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthorizer:Lcom/google/android/picasasync/Authorizer;

    .line 121
    :try_start_0
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthorizer:Lcom/google/android/picasasync/Authorizer;

    iget-object v6, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v6}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/picasasync/Authorizer;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 136
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v5}, Lcom/google/android/picasasync/UploadTaskEntry;->getRequestTemplate()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "requestTemplate":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 138
    const-string v5, "Authorization: GoogleLogin auth=%=_auth_token_=%\r\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    :goto_0
    const/4 v2, 0x0

    .line 147
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 149
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_2
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v5}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v5}, Lcom/google/android/picasasync/UploadTaskEntry;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v3, v5, v4}, Lcom/google/android/picasasync/GDataUploader;->start(Ljava/io/InputStream;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 164
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_1
    return-object v5

    .line 122
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "requestTemplate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    const-string v5, "UploadsManager"

    const-string v6, "authentication canceled"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    new-instance v5, Lcom/google/android/picasasync/Uploader$UnauthorizedException;

    invoke-direct {v5, v0}, Lcom/google/android/picasasync/Uploader$UnauthorizedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 126
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "UploadsManager"

    const-string v6, "authentication failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    throw v0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 132
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    const-string v5, "UploadsManager"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    new-instance v5, Lcom/google/android/picasasync/Uploader$UnauthorizedException;

    invoke-direct {v5, v0}, Lcom/google/android/picasasync/Uploader$UnauthorizedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 141
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    .restart local v4    # "requestTemplate":Ljava/lang/String;
    :cond_1
    const-string v5, "%=_auth_token_=%"

    iget-object v6, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 153
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_2
    :try_start_3
    invoke-direct {p0, v3}, Lcom/google/android/picasasync/GDataUploader;->resume(Ljava/io/InputStream;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 164
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 155
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 156
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    :try_start_4
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .line 157
    :catch_4
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    new-instance v5, Lcom/google/android/picasasync/Uploader$LocalIoException;

    invoke-direct {v5, v0}, Lcom/google/android/picasasync/Uploader$LocalIoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 159
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v0

    .line 161
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_5
    const-string v5, "UploadsManager"

    const-string v6, "error in parsing response"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    new-instance v5, Lcom/google/android/picasasync/Uploader$UploadException;

    const-string v6, "error in parsing response"

    invoke-direct {v5, v6, v0}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 159
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 157
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 155
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method
