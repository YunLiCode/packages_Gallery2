.class public final Lcom/google/android/picasasync/PicasaSyncService;
.super Landroid/app/Service;
.source "PicasaSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;
    }
.end annotation


# static fields
.field private static sSyncAdapter:Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncService;->carryOverSyncAutomatically(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized carryOverSyncAutomatically(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v1, Lcom/google/android/picasasync/PicasaSyncService;

    monitor-enter v1

    :try_start_0
    const-string v0, "com.cooliris.picasa.contentprovider"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "PicasaSyncService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carry over syncAutomatically for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "com.cooliris.picasa.contentprovider"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 59
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getSyncAdapter(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-class v1, Lcom/google/android/picasasync/PicasaSyncService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncService;->sSyncAdapter:Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncService;->sSyncAdapter:Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;

    .line 42
    :cond_0
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncService;->sSyncAdapter:Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaSyncService;->getSyncAdapter(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
