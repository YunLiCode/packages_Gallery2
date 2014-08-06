.class public Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncContext"
.end annotation


# instance fields
.field public api:Lcom/google/android/picasasync/PicasaApi;

.field private mAccount:Landroid/accounts/Account;

.field private mAuthToken:Ljava/lang/String;

.field private volatile mStopSync:Z

.field private mThread:Ljava/lang/Thread;

.field public result:Landroid/content/SyncResult;

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PicasaSyncHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V
    .locals 2
    .param p2, "syncResult"    # Landroid/content/SyncResult;
    .param p3, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 773
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncResult;

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    .line 774
    new-instance v0, Lcom/google/android/picasasync/PicasaApi;

    # getter for: Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$200(Lcom/google/android/picasasync/PicasaSyncHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/PicasaApi;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/picasasync/PicasaApi;

    .line 775
    iput-object p3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mThread:Ljava/lang/Thread;

    .line 776
    return-void
.end method


# virtual methods
.method public refreshAuthToken()V
    .locals 7

    .prologue
    .line 779
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

    # getter for: Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$200(Lcom/google/android/picasasync/PicasaSyncHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 780
    .local v1, "manager":Landroid/accounts/AccountManager;
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 781
    const-string v2, "com.google"

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    .line 786
    :try_start_0
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    const-string v3, "lh2"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    .line 788
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/picasasync/PicasaApi;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/PicasaApi;->setAuthToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :goto_0
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 793
    const-string v2, "PicasaSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get auth token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 796
    :cond_1
    return-void

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PicasaSync"

    const-string v3, "getAuthToken fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;)Z
    .locals 2
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 800
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    .line 804
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->refreshAuthToken()V

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopSync()V
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mStopSync:Z

    .line 811
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/picasasync/PicasaApi;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaApi;->abortCurrentOperation()V

    .line 813
    return-void
.end method

.method public syncInterrupted()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mStopSync:Z

    return v0
.end method
