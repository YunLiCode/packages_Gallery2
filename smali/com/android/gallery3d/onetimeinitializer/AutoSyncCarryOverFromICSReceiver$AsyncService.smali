.class public Lcom/android/gallery3d/onetimeinitializer/AutoSyncCarryOverFromICSReceiver$AsyncService;
.super Landroid/app/IntentService;
.source "AutoSyncCarryOverFromICSReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/onetimeinitializer/AutoSyncCarryOverFromICSReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "AutoSyncCarryOverFromICSAsync"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    :try_start_0
    # invokes: Lcom/android/gallery3d/onetimeinitializer/AutoSyncCarryOverFromICSReceiver;->carryOverSyncAutomatically(Landroid/content/Context;)V
    invoke-static {p0}, Lcom/android/gallery3d/onetimeinitializer/AutoSyncCarryOverFromICSReceiver;->access$000(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    # invokes: Lcom/android/gallery3d/onetimeinitializer/AutoSyncCarryOverFromICSReceiver;->disableMyself(Landroid/content/Context;)V
    invoke-static {p0}, Lcom/android/gallery3d/onetimeinitializer/AutoSyncCarryOverFromICSReceiver;->access$100(Landroid/content/Context;)V

    .line 65
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "AutoSyncCarryOver"

    const-string v2, "onHandleIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    # invokes: Lcom/android/gallery3d/onetimeinitializer/AutoSyncCarryOverFromICSReceiver;->disableMyself(Landroid/content/Context;)V
    invoke-static {p0}, Lcom/android/gallery3d/onetimeinitializer/AutoSyncCarryOverFromICSReceiver;->access$100(Landroid/content/Context;)V

    goto :goto_0

    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    # invokes: Lcom/android/gallery3d/onetimeinitializer/AutoSyncCarryOverFromICSReceiver;->disableMyself(Landroid/content/Context;)V
    invoke-static {p0}, Lcom/android/gallery3d/onetimeinitializer/AutoSyncCarryOverFromICSReceiver;->access$100(Landroid/content/Context;)V

    throw v1
.end method
