.class public Lcom/android/gallery3d/util/UsageStatistics;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# static fields
.field private static final DEV_MODE:Z

.field private static sAnalyticsEnabled:Z

.field private static sAnalyticsTag:Ljava/lang/String;

.field private static sLastHit:Ljava/lang/String;

.field private static sLastTimestampDifference:J

.field private static sLastUpdateTimestamp:J

.field private static sPendingTransition:Ljava/lang/String;

.field private static sSampleRateHundredths:D

.field private static sTracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    .line 68
    const-string v0, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/gallery3d/util/UsageStatistics;->DEV_MODE:Z

    .line 75
    sput-boolean v1, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsEnabled:Z

    .line 77
    const-wide/high16 v0, -0x4010000000000000L

    sput-wide v0, Lcom/android/gallery3d/util/UsageStatistics;->sSampleRateHundredths:D

    .line 78
    const-string v0, "NULL"

    sput-object v0, Lcom/android/gallery3d/util/UsageStatistics;->sLastHit:Ljava/lang/String;

    .line 79
    const-string v0, "NULL"

    sput-object v0, Lcom/android/gallery3d/util/UsageStatistics;->sPendingTransition:Ljava/lang/String;

    .line 80
    sput-wide v3, Lcom/android/gallery3d/util/UsageStatistics;->sLastUpdateTimestamp:J

    .line 81
    sput-wide v3, Lcom/android/gallery3d/util/UsageStatistics;->sLastTimestampDifference:J

    return-void

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasGoogleAccount(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 120
    .local v1, "accounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 121
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v6, "@google.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    const/4 v5, 0x1

    .line 125
    .end local v0    # "account":Landroid/accounts/Account;
    :goto_1
    return v5

    .line 120
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 85
    sget-boolean v0, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/gallery3d/util/UsageStatistics;->DEV_MODE:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/util/UsageStatistics;->hasGoogleAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-wide v0, Lcom/android/gallery3d/util/UsageStatistics;->sSampleRateHundredths:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    sget-wide v0, Lcom/android/gallery3d/util/UsageStatistics;->sSampleRateHundredths:D

    const-wide/high16 v2, -0x4010000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gallery_analytics_sample_rate_hundredths"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    sput-wide v0, Lcom/android/gallery3d/util/UsageStatistics;->sSampleRateHundredths:D

    .line 93
    sget-wide v0, Lcom/android/gallery3d/util/UsageStatistics;->sSampleRateHundredths:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_3

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsEnabled:Z

    goto :goto_0

    .line 98
    :cond_3
    invoke-static {p0}, Lcom/android/gallery3d/util/UsageStatistics;->startAnalytics(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "screenComponent"    # Ljava/lang/String;
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-boolean v1, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsEnabled:Z

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/util/UsageStatistics;->updateTimestampAndSession()V

    .line 156
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 160
    :cond_2
    if-nez p0, :cond_3

    .line 161
    const-string p0, "NULL"

    .line 163
    :cond_3
    if-nez p1, :cond_4

    .line 164
    const-string p1, "NULL"

    .line 166
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "hit":Ljava/lang/String;
    sget-object v1, Lcom/android/gallery3d/util/UsageStatistics;->sTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "ScreenTransition"

    sget-object v3, Lcom/android/gallery3d/util/UsageStatistics;->sPendingTransition:Ljava/lang/String;

    const-string v4, "%s -> %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/gallery3d/util/UsageStatistics;->sLastHit:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-wide v5, Lcom/android/gallery3d/util/UsageStatistics;->sLastTimestampDifference:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    sput-object v0, Lcom/android/gallery3d/util/UsageStatistics;->sLastHit:Ljava/lang/String;

    .line 172
    const-string v1, "NULL"

    sput-object v1, Lcom/android/gallery3d/util/UsageStatistics;->sPendingTransition:Ljava/lang/String;

    .line 174
    sget-object v1, Lcom/android/gallery3d/util/UsageStatistics;->sTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 178
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 179
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "optional_value"    # J

    .prologue
    .line 182
    sget-boolean v0, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsEnabled:Z

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/UsageStatistics;->updateTimestampAndSession()V

    .line 184
    if-nez p0, :cond_1

    const-string p0, "NULL"

    .line 185
    :cond_1
    if-nez p1, :cond_2

    const-string p1, "NULL"

    .line 186
    :cond_2
    if-nez p2, :cond_3

    const-string p2, "NULL"

    .line 187
    :cond_3
    sget-object v0, Lcom/android/gallery3d/util/UsageStatistics;->sTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static setPendingTransitionCause(Ljava/lang/String;)V
    .locals 1
    .param p0, "cause"    # Ljava/lang/String;

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsEnabled:Z

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/UsageStatistics;->updateTimestampAndSession()V

    .line 145
    if-nez p0, :cond_1

    .line 146
    const-string p0, "NULL"

    .line 148
    :cond_1
    sput-object p0, Lcom/android/gallery3d/util/UsageStatistics;->sPendingTransition:Ljava/lang/String;

    goto :goto_0
.end method

.method private static startAnalytics(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsEnabled:Z

    .line 103
    sget-object v0, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    sget-boolean v0, Lcom/android/gallery3d/util/UsageStatistics;->DEV_MODE:Z

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gallery_analytics_tag_dev"

    const-string v2, "UA-36276453-2"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsTag:Ljava/lang/String;

    .line 114
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/UsageStatistics;->sTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 115
    sget-object v0, Lcom/android/gallery3d/util/UsageStatistics;->sTracker:Lcom/google/analytics/tracking/android/Tracker;

    sget-wide v1, Lcom/android/gallery3d/util/UsageStatistics;->sSampleRateHundredths:D

    const-wide/high16 v3, 0x4059000000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->setSampleRate(D)V

    .line 116
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gallery_analytics_tag_user"

    const-string v2, "UA-36276453-1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/UsageStatistics;->sAnalyticsTag:Ljava/lang/String;

    goto :goto_0
.end method

.method private static updateTimestampAndSession()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    .local v0, "currentTime":J
    sget-wide v2, Lcom/android/gallery3d/util/UsageStatistics;->sLastUpdateTimestamp:J

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 131
    sget-object v2, Lcom/android/gallery3d/util/UsageStatistics;->sTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->setStartSession(Z)V

    .line 132
    const-string v2, "NULL"

    sput-object v2, Lcom/android/gallery3d/util/UsageStatistics;->sLastHit:Ljava/lang/String;

    .line 133
    const-string v2, "NULL"

    sput-object v2, Lcom/android/gallery3d/util/UsageStatistics;->sPendingTransition:Ljava/lang/String;

    .line 134
    sput-wide v6, Lcom/android/gallery3d/util/UsageStatistics;->sLastTimestampDifference:J

    .line 136
    :cond_0
    sget-wide v2, Lcom/android/gallery3d/util/UsageStatistics;->sLastUpdateTimestamp:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 137
    sget-wide v2, Lcom/android/gallery3d/util/UsageStatistics;->sLastUpdateTimestamp:J

    sub-long v2, v0, v2

    sput-wide v2, Lcom/android/gallery3d/util/UsageStatistics;->sLastTimestampDifference:J

    .line 139
    :cond_1
    sput-wide v0, Lcom/android/gallery3d/util/UsageStatistics;->sLastUpdateTimestamp:J

    .line 140
    return-void
.end method
