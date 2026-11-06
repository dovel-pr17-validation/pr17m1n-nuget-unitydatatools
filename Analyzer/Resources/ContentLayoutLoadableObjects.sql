CREATE TABLE IF NOT EXISTS content_layout_loadable_objects
(
    -- The objects that can be loaded on demand, identified independently of the content file that
    -- holds them, plus where each came from in the source project.
    loadable_index INTEGER,          -- the json array index; how the other content_layout tables name a loadable
    guid TEXT,                       -- AssetDatabase GUID of the source asset
    lfid INTEGER,                    -- local file id of the object in its output content file
    identifier_type INTEGER,
    serialized_file_index INTEGER,   -- content_layout_serialized_files.file_index; NULL if dropped from the build
    is_root_asset INTEGER,           -- 1-based position in the layout's RootAssets; 0 when not a root asset
    PRIMARY KEY (loadable_index)
);
