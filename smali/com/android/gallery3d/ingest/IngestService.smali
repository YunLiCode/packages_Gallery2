.class public Lcom/android/gallery3d/ingest/IngestService;
.super Landroid/app/Service;
.source "IngestService.java"

# interfaces
.implements Lcom/android/gallery3d/data/MtpClient$Listener;
.implements Lcom/android/gallery3d/ingest/ImportTask$Listener;
.implements Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ingest/IngestService$ScannerClient;,
        Lcom/android/gallery3d/ingest/IngestService$LocalBinder;
    }
.end annotation


# static fields
.field private static sClient:Lcom/android/gallery3d/data/MtpClient;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

.field private mDevice:Landroid/mtp/MtpDevice;

.field private mDevicePrettyName:Ljava/lang/String;

.field private mIndex:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

.field private mLastProgressIndexTime:J

.field private mNeedRelaunchNotification:Z

.field private mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRedeliverImportFinish:Z

.field private mRedeliverImportFinishCount:I

.field private mRedeliverIndexFinish:Z

.field private mRedeliverNotifyIndexChanged:Z

.field private mRedeliverObjectsNotImported:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScannerClient:Lcom/android/gallery3d/ingest/IngestService$ScannerClient;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v0, Lcom/android/gallery3d/ingest/IngestService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ingest/IngestService$LocalBinder;-><init>(Lcom/android/gallery3d/ingest/IngestService;)V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mBinder:Landroid/os/IBinder;

    .line 66
    iput-boolean v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverImportFinish:Z

    .line 67
    iput v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverImportFinishCount:I

    .line 69
    iput-boolean v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverNotifyIndexChanged:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverIndexFinish:Z

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mLastProgressIndexTime:J

    .line 74
    iput-boolean v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mNeedRelaunchNotification:Z

    .line 282
    return-void
.end method

.method private setDevice(Landroid/mtp/MtpDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/mtp/MtpDevice;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevice:Landroid/mtp/MtpDevice;

    if-ne v1, p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 111
    :cond_0
    iput-boolean v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverImportFinish:Z

    .line 112
    iput-object v3, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverObjectsNotImported:Ljava/util/Collection;

    .line 113
    iput-boolean v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverNotifyIndexChanged:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverIndexFinish:Z

    .line 115
    iput-object p1, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevice:Landroid/mtp/MtpDevice;

    .line 116
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mIndex:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevice:Landroid/mtp/MtpDevice;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->setDevice(Landroid/mtp/MtpDevice;)V

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevice:Landroid/mtp/MtpDevice;

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevice:Landroid/mtp/MtpDevice;

    invoke-virtual {v1}, Landroid/mtp/MtpDevice;->getDeviceInfo()Landroid/mtp/MtpDeviceInfo;

    move-result-object v0

    .line 119
    .local v0, "deviceInfo":Landroid/mtp/MtpDeviceInfo;
    if-nez v0, :cond_1

    .line 120
    invoke-direct {p0, v3}, Lcom/android/gallery3d/ingest/IngestService;->setDevice(Landroid/mtp/MtpDevice;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevicePrettyName:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevicePrettyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 125
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mIndex:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v2}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getIndexRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 130
    .end local v0    # "deviceInfo":Landroid/mtp/MtpDeviceInfo;
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    if-eqz v1, :cond_3

    .line 131
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/ingest/IngestActivity;->notifyIndexChanged()V

    goto :goto_0

    .line 128
    :cond_2
    iput-object v3, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevicePrettyName:Ljava/lang/String;

    goto :goto_1

    .line 133
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverNotifyIndexChanged:Z

    goto :goto_0
.end method


# virtual methods
.method public deviceAdded(Landroid/mtp/MtpDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/mtp/MtpDevice;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevice:Landroid/mtp/MtpDevice;

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ingest/IngestService;->setDevice(Landroid/mtp/MtpDevice;)V

    .line 194
    const-string v0, "Importer"

    const-string v1, "DeviceConnected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public deviceRemoved(Landroid/mtp/MtpDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/mtp/MtpDevice;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevice:Landroid/mtp/MtpDevice;

    if-ne p1, v0, :cond_0

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ingest/IngestService;->setDevice(Landroid/mtp/MtpDevice;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNeedRelaunchNotification:Z

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 206
    :cond_0
    return-void
.end method

.method protected getIndex()Lcom/android/gallery3d/ingest/MtpDeviceIndex;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mIndex:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    return-object v0
.end method

.method protected importSelectedItems(Landroid/util/SparseBooleanArray;Landroid/widget/Adapter;)V
    .locals 7
    .param p1, "selected"    # Landroid/util/SparseBooleanArray;
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v6, 0x0

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "importHandles":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpObjectInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 174
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 176
    .local v2, "item":Ljava/lang/Object;
    instance-of v4, v2, Landroid/mtp/MtpObjectInfo;

    if-eqz v4, :cond_0

    .line 177
    check-cast v2, Landroid/mtp/MtpObjectInfo;

    .end local v2    # "item":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    new-instance v3, Lcom/android/gallery3d/ingest/ImportTask;

    iget-object v4, p0, Lcom/android/gallery3d/ingest/IngestService;->mDevice:Landroid/mtp/MtpDevice;

    const-string v5, "Imported"

    invoke-direct {v3, v4, v1, v5, p0}, Lcom/android/gallery3d/ingest/ImportTask;-><init>(Landroid/mtp/MtpDevice;Ljava/util/Collection;Ljava/lang/String;Landroid/content/Context;)V

    .line 182
    .local v3, "task":Lcom/android/gallery3d/ingest/ImportTask;
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/ingest/ImportTask;->setListener(Lcom/android/gallery3d/ingest/ImportTask$Listener;)V

    .line 183
    iget-object v4, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/IngestService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0243

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 185
    const/16 v4, 0xb

    iget-object v5, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/ingest/IngestService;->startForeground(ILandroid/app/Notification;)V

    .line 187
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 79
    new-instance v0, Lcom/android/gallery3d/ingest/IngestService$ScannerClient;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ingest/IngestService$ScannerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mScannerClient:Lcom/android/gallery3d/ingest/IngestService$ScannerClient;

    .line 80
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/IngestService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 81
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v1, 0x108007c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 84
    invoke-static {}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getInstance()Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mIndex:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mIndex:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->setProgressListener(Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 87
    sget-object v0, Lcom/android/gallery3d/ingest/IngestService;->sClient:Lcom/android/gallery3d/data/MtpClient;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/gallery3d/data/MtpClient;

    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/IngestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/MtpClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/ingest/IngestService;->sClient:Lcom/android/gallery3d/data/MtpClient;

    .line 90
    :cond_0
    sget-object v0, Lcom/android/gallery3d/ingest/IngestService;->sClient:Lcom/android/gallery3d/data/MtpClient;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MtpClient;->getDeviceList()Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 92
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ingest/IngestService;->setDevice(Landroid/mtp/MtpDevice;)V

    .line 94
    :cond_1
    sget-object v0, Lcom/android/gallery3d/ingest/IngestService;->sClient:Lcom/android/gallery3d/data/MtpClient;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MtpClient;->addListener(Lcom/android/gallery3d/data/MtpClient$Listener;)V

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/gallery3d/ingest/IngestService;->sClient:Lcom/android/gallery3d/data/MtpClient;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MtpClient;->removeListener(Lcom/android/gallery3d/data/MtpClient$Listener;)V

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mIndex:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->unsetProgressListener(Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;)V

    .line 101
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 102
    return-void
.end method

.method public onImportFinish(Ljava/util/Collection;I)V
    .locals 5
    .param p2, "visitedCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "objectsNotImported":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpObjectInfo;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ingest/IngestService;->stopForeground(Z)V

    .line 228
    iput-boolean v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mNeedRelaunchNotification:Z

    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ingest/IngestActivity;->onImportFinish(Ljava/util/Collection;I)V

    .line 240
    :goto_0
    const-string v0, "Importer"

    const-string v1, "ImportFinished"

    const/4 v2, 0x0

    int-to-long v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 242
    return-void

    .line 232
    :cond_0
    iput-boolean v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverImportFinish:Z

    .line 233
    iput-object p1, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverObjectsNotImported:Ljava/util/Collection;

    .line 234
    iput p2, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverImportFinishCount:I

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v1, v1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/IngestService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onImportProgress(IILjava/lang/String;)V
    .locals 3
    .param p1, "visitedCount"    # I
    .param p2, "totalCount"    # I
    .param p3, "pathIfSuccessful"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 211
    if-eqz p3, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mScannerClient:Lcom/android/gallery3d/ingest/IngestService$ScannerClient;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/ingest/IngestService$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 214
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mNeedRelaunchNotification:Z

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/ingest/IngestActivity;->onImportProgress(IILjava/lang/String;)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p2, p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/IngestService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 222
    return-void
.end method

.method public onIndexFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 269
    iput-boolean v3, p0, Lcom/android/gallery3d/ingest/IngestService;->mNeedRelaunchNotification:Z

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/IngestActivity;->onIndexFinish()V

    .line 279
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v1, v1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/IngestService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 277
    iput-boolean v3, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverIndexFinish:Z

    goto :goto_0
.end method

.method public onObjectIndexed(Landroid/mtp/MtpObjectInfo;I)V
    .locals 7
    .param p1, "object"    # Landroid/mtp/MtpObjectInfo;
    .param p2, "numVisited"    # I

    .prologue
    const/4 v6, 0x0

    .line 246
    iput-boolean v6, p0, Lcom/android/gallery3d/ingest/IngestService;->mNeedRelaunchNotification:Z

    .line 247
    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ingest/IngestActivity;->onObjectIndexed(Landroid/mtp/MtpObjectInfo;I)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 252
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mLastProgressIndexTime:J

    const-wide/16 v4, 0xb4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 253
    iput-wide v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mLastProgressIndexTime:J

    .line 254
    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v6, p2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/IngestService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0240

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 256
    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onSorting()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/IngestActivity;->onSorting()V

    .line 265
    :cond_0
    return-void
.end method

.method protected setClientActivity(Lcom/android/gallery3d/ingest/IngestActivity;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/gallery3d/ingest/IngestActivity;

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    if-ne v0, p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    if-nez v0, :cond_2

    .line 145
    iget-boolean v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNeedRelaunchNotification:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v3, v3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/IngestService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 155
    iget-boolean v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverImportFinish:Z

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverObjectsNotImported:Ljava/util/Collection;

    iget v2, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverImportFinishCount:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ingest/IngestActivity;->onImportFinish(Ljava/util/Collection;I)V

    .line 158
    iput-boolean v3, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverImportFinish:Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverObjectsNotImported:Ljava/util/Collection;

    .line 161
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverNotifyIndexChanged:Z

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/IngestActivity;->notifyIndexChanged()V

    .line 163
    iput-boolean v3, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverNotifyIndexChanged:Z

    .line 165
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverIndexFinish:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService;->mClientActivity:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/IngestActivity;->onIndexFinish()V

    .line 167
    iput-boolean v3, p0, Lcom/android/gallery3d/ingest/IngestService;->mRedeliverIndexFinish:Z

    goto :goto_0
.end method
