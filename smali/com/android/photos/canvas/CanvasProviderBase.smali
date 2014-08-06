.class public abstract Lcom/android/photos/canvas/CanvasProviderBase;
.super Landroid/content/ContentProvider;
.source "CanvasProviderBase.java"


# static fields
.field public static final BROWSER_ROOT_URI:Landroid/net/Uri;

.field protected static final BROWSE_COLUMN_CASES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final BROWSE_HEADER_PROJECTION_ALL:[Ljava/lang/String;

.field protected static final BROWSE_PROJECTION_ALL:[Ljava/lang/String;

.field protected static final CACHE_TIME_MS:Ljava/lang/Integer;

.field protected static final CLUSTER_COLUMN_CASES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final CLUSTER_PROJECTION_ALL:[Ljava/lang/String;

.field protected static final LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final LAUNCHER_PROJECTION_ALL:[Ljava/lang/String;

.field public static NOTIFY_CHANGED_URI:Landroid/net/Uri;

.field protected static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/data/Cluster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 43
    const-string v0, "content://com.android.gallery3d.provider.CanvasProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->NOTIFY_CHANGED_URI:Landroid/net/Uri;

    .line 60
    const-string v0, "content://com.android.gallery3d.provider.CanvasProvider/browse"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSER_ROOT_URI:Landroid/net/Uri;

    .line 72
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    .line 76
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "launcher"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "launcher/items"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "launcher/items/#"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "browse/headers"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "browse/*/*/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "browse/*/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "browse/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "image/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "resource/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "grid/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "griditems/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    .line 109
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "importance"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "display_name"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "visible_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "image_crop_allowed"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "cache_time_ms"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "intent_uri"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "display_description"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "browse_items_uri"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_PROJECTION_ALL:[Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_COLUMN_CASES:Ljava/util/HashMap;

    .line 142
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "parent_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "image_uri"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_COLUMN_CASES:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_PROJECTION_ALL:[Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    .line 170
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "display_name"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "icon_uri"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "badge_uri"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "color_hint"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "text_color_hint"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "bg_image_uri"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "wrap_items"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "default_item_width"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "default_item_height"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "items_uri"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_PROJECTION_ALL:[Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    .line 218
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "parent_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "display_name"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "display_description"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "image_uri"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "width"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "height"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    const-string v1, "intent_uri"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_PROJECTION_ALL:[Ljava/lang/String;

    .line 247
    const v0, 0xdbba0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/CanvasProviderBase;->CACHE_TIME_MS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/photos/canvas/CanvasProviderBase;->mClusters:Ljava/util/ArrayList;

    return-void
.end method

.method private buildClusters([Ljava/lang/String;Landroid/database/MatrixCursor;)V
    .locals 11
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "c"    # Landroid/database/MatrixCursor;

    .prologue
    .line 329
    iget-object v9, p0, Lcom/android/photos/canvas/CanvasProviderBase;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 330
    invoke-direct {p0}, Lcom/android/photos/canvas/CanvasProviderBase;->loadClustersIfEmpty()V

    .line 332
    iget-object v9, p0, Lcom/android/photos/canvas/CanvasProviderBase;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 333
    .local v1, "clusterCount":I
    iget-object v9, p0, Lcom/android/photos/canvas/CanvasProviderBase;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/data/Cluster;

    .line 335
    .local v0, "cluster":Lcom/google/android/pano/data/Cluster;
    array-length v9, p1

    new-array v8, v9, [Ljava/lang/Object;

    .line 336
    .local v8, "row":[Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getId()J

    move-result-wide v4

    .line 337
    .local v4, "id":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v9, p1

    if-ge v6, v9, :cond_2

    .line 338
    sget-object v9, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v10, p1, v6

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 337
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 341
    :cond_0
    sget-object v9, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v10, p1, v6

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 342
    .local v2, "column":I
    const/4 v7, 0x0

    .line 343
    .local v7, "obj":Ljava/lang/Object;
    packed-switch v2, :pswitch_data_0

    .line 380
    .end local v7    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_3
    aput-object v7, v8, v6

    goto :goto_2

    .line 345
    .restart local v7    # "obj":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 346
    .local v7, "obj":Ljava/lang/Long;
    goto :goto_3

    .line 348
    .local v7, "obj":Ljava/lang/Object;
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 349
    .local v7, "obj":Ljava/lang/Integer;
    goto :goto_3

    .line 351
    .local v7, "obj":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getName()Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "obj":Ljava/lang/String;
    goto :goto_3

    .line 354
    .local v7, "obj":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getImportance()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 355
    .local v7, "obj":Ljava/lang/Integer;
    goto :goto_3

    .line 357
    .local v7, "obj":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 358
    .local v7, "obj":Ljava/lang/CharSequence;
    goto :goto_3

    .line 360
    .local v7, "obj":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getDisplayDescription()Ljava/lang/CharSequence;

    move-result-object v7

    .line 361
    .local v7, "obj":Ljava/lang/CharSequence;
    goto :goto_3

    .line 363
    .local v7, "obj":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getVisibleCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 364
    .local v7, "obj":Ljava/lang/Integer;
    goto :goto_3

    .line 366
    .local v7, "obj":Ljava/lang/Object;
    :pswitch_7
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getCacheTimeMs()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 367
    .local v7, "obj":Ljava/lang/Long;
    goto :goto_3

    .line 369
    .local v7, "obj":Ljava/lang/Object;
    :pswitch_8
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 370
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "obj":Ljava/lang/String;
    goto :goto_3

    .line 374
    .local v7, "obj":Ljava/lang/Object;
    :pswitch_9
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->isImageCropAllowed()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 375
    .local v7, "obj":Ljava/lang/Boolean;
    goto :goto_3

    .line 377
    .local v7, "obj":Ljava/lang/Object;
    :pswitch_a
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getBrowseItemsUri()Landroid/net/Uri;

    move-result-object v7

    .local v7, "obj":Landroid/net/Uri;
    goto :goto_3

    .line 382
    .end local v2    # "column":I
    .end local v7    # "obj":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p2, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 384
    .end local v0    # "cluster":Lcom/google/android/pano/data/Cluster;
    .end local v4    # "id":J
    .end local v6    # "j":I
    .end local v8    # "row":[Ljava/lang/Object;
    :cond_3
    return-void

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method private buildMultiCluster([Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/net/Uri;)V
    .locals 3
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "c"    # Landroid/database/MatrixCursor;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 387
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/photos/canvas/CanvasProviderBase;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 388
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/photos/canvas/CanvasProviderBase;->buildSingleCluster([Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/net/Uri;)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method private buildSingleCluster([Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/net/Uri;)V
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "c"    # Landroid/database/MatrixCursor;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/photos/canvas/CanvasProviderBase;->loadClustersIfEmpty()V

    .line 396
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 398
    .local v6, "parentId":I
    iget-object v8, p0, Lcom/android/photos/canvas/CanvasProviderBase;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/data/Cluster;

    .line 399
    .local v0, "cluster":Lcom/google/android/pano/data/Cluster;
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster;->getItemCount()I

    move-result v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 400
    .local v5, "numItems":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 401
    invoke-virtual {v0, v2}, Lcom/google/android/pano/data/Cluster;->getItem(I)Lcom/google/android/pano/data/Cluster$ClusterItem;

    move-result-object v3

    .line 402
    .local v3, "item":Lcom/google/android/pano/data/Cluster$ClusterItem;
    array-length v8, p1

    new-array v7, v8, [Ljava/lang/Object;

    .line 404
    .local v7, "row":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v8, p1

    if-ge v4, v8, :cond_1

    .line 405
    sget-object v8, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v9, p1, v4

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 404
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 408
    :cond_0
    sget-object v8, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v9, p1, v4

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 409
    .local v1, "column":I
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 411
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_2

    .line 414
    :pswitch_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_2

    .line 417
    :pswitch_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_2

    .line 420
    :pswitch_3
    invoke-virtual {v3}, Lcom/google/android/pano/data/Cluster$ClusterItem;->getImageUri()Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_2

    .line 424
    .end local v1    # "column":I
    :cond_1
    invoke-virtual {p2, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v3    # "item":Lcom/google/android/pano/data/Cluster$ClusterItem;
    .end local v4    # "j":I
    .end local v7    # "row":[Ljava/lang/Object;
    :cond_2
    return-void

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadClustersIfEmpty()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProviderBase;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProviderBase;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/photos/canvas/CanvasProviderBase;->loadClusters(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract buildBrowseHeaders([Ljava/lang/String;Landroid/database/MatrixCursor;)V
.end method

.method protected abstract buildBrowseRow([Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
.end method

.method protected abstract buildGrid([Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/net/Uri;)V
.end method

.method protected abstract buildGridItems([Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
.end method

.method protected createImageUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "imageResId"    # I

    .prologue
    .line 460
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 440
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 435
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract loadClusters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/data/Cluster;",
            ">;)V"
        }
    .end annotation
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 451
    sget-object v2, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 452
    .local v1, "match":I
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 453
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 454
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProviderBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 456
    .end local v0    # "id":I
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 257
    .local v3, "identity":J
    const/4 v0, 0x0

    .line 258
    .local v0, "c":Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .line 259
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v6, Lcom/android/photos/canvas/CanvasProviderBase;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 260
    .local v5, "match":I
    packed-switch v5, :pswitch_data_0

    .line 309
    :pswitch_0
    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "c":Landroid/database/MatrixCursor;
    .local v1, "c":Landroid/database/MatrixCursor;
    move-object v0, v1

    .line 312
    .end local v1    # "c":Landroid/database/MatrixCursor;
    .restart local v0    # "c":Landroid/database/MatrixCursor;
    :goto_0
    if-eqz v0, :cond_0

    .line 313
    move-object v2, v0

    .line 317
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 262
    :pswitch_1
    if-nez p2, :cond_1

    .line 263
    :try_start_1
    sget-object p2, Lcom/android/photos/canvas/CanvasProviderBase;->LAUNCHER_PROJECTION_ALL:[Ljava/lang/String;

    .line 265
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .end local v0    # "c":Landroid/database/MatrixCursor;
    .restart local v1    # "c":Landroid/database/MatrixCursor;
    :try_start_2
    invoke-direct {p0, p2, v1}, Lcom/android/photos/canvas/CanvasProviderBase;->buildClusters([Ljava/lang/String;Landroid/database/MatrixCursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 267
    .end local v1    # "c":Landroid/database/MatrixCursor;
    .restart local v0    # "c":Landroid/database/MatrixCursor;
    goto :goto_0

    .line 269
    :pswitch_2
    if-nez p2, :cond_2

    .line 270
    :try_start_3
    sget-object p2, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_PROJECTION_ALL:[Ljava/lang/String;

    .line 272
    :cond_2
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    .end local v0    # "c":Landroid/database/MatrixCursor;
    .restart local v1    # "c":Landroid/database/MatrixCursor;
    :try_start_4
    invoke-direct {p0, p2, v1, p1}, Lcom/android/photos/canvas/CanvasProviderBase;->buildMultiCluster([Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    .line 274
    .end local v1    # "c":Landroid/database/MatrixCursor;
    .restart local v0    # "c":Landroid/database/MatrixCursor;
    goto :goto_0

    .line 276
    :pswitch_3
    if-nez p2, :cond_3

    .line 277
    :try_start_5
    sget-object p2, Lcom/android/photos/canvas/CanvasProviderBase;->CLUSTER_PROJECTION_ALL:[Ljava/lang/String;

    .line 279
    :cond_3
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    .end local v0    # "c":Landroid/database/MatrixCursor;
    .restart local v1    # "c":Landroid/database/MatrixCursor;
    :try_start_6
    invoke-direct {p0, p2, v1, p1}, Lcom/android/photos/canvas/CanvasProviderBase;->buildSingleCluster([Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v1

    .line 281
    .end local v1    # "c":Landroid/database/MatrixCursor;
    .restart local v0    # "c":Landroid/database/MatrixCursor;
    goto :goto_0

    .line 283
    :pswitch_4
    if-nez p2, :cond_4

    .line 284
    :try_start_7
    sget-object p2, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_PROJECTION_ALL:[Ljava/lang/String;

    .line 286
    :cond_4
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 287
    .end local v0    # "c":Landroid/database/MatrixCursor;
    .restart local v1    # "c":Landroid/database/MatrixCursor;
    :try_start_8
    invoke-virtual {p0, p2, v1}, Lcom/android/photos/canvas/CanvasProviderBase;->buildBrowseHeaders([Ljava/lang/String;Landroid/database/MatrixCursor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v0, v1

    .line 288
    .end local v1    # "c":Landroid/database/MatrixCursor;
    .restart local v0    # "c":Landroid/database/MatrixCursor;
    goto :goto_0

    .line 290
    :pswitch_5
    if-nez p2, :cond_5

    .line 291
    :try_start_9
    sget-object p2, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_PROJECTION_ALL:[Ljava/lang/String;

    .line 293
    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/android/photos/canvas/CanvasProviderBase;->buildBrowseRow([Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 294
    goto :goto_0

    .line 296
    :pswitch_6
    if-nez p2, :cond_6

    .line 297
    sget-object p2, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_HEADER_PROJECTION_ALL:[Ljava/lang/String;

    .line 299
    :cond_6
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 300
    .end local v0    # "c":Landroid/database/MatrixCursor;
    .restart local v1    # "c":Landroid/database/MatrixCursor;
    :try_start_a
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/photos/canvas/CanvasProviderBase;->buildGrid([Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/net/Uri;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v0, v1

    .line 301
    .end local v1    # "c":Landroid/database/MatrixCursor;
    .restart local v0    # "c":Landroid/database/MatrixCursor;
    goto :goto_0

    .line 303
    :pswitch_7
    if-nez p2, :cond_7

    .line 304
    :try_start_b
    sget-object p2, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_PROJECTION_ALL:[Ljava/lang/String;

    .line 306
    :cond_7
    invoke-virtual {p0, p2, p1}, Lcom/android/photos/canvas/CanvasProviderBase;->buildGridItems([Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v2

    .line 307
    goto :goto_0

    .line 317
    .end local v5    # "match":I
    :catchall_0
    move-exception v6

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .end local v0    # "c":Landroid/database/MatrixCursor;
    .restart local v1    # "c":Landroid/database/MatrixCursor;
    .restart local v5    # "match":I
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "c":Landroid/database/MatrixCursor;
    .restart local v0    # "c":Landroid/database/MatrixCursor;
    goto :goto_1

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
