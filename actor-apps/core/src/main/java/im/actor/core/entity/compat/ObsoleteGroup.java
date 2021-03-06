/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.core.entity.compat;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import im.actor.core.api.ApiGroup;
import im.actor.core.api.ApiMember;
import im.actor.runtime.bser.BserObject;
import im.actor.runtime.bser.BserValues;
import im.actor.runtime.bser.BserWriter;

public class ObsoleteGroup extends BserObject {

    private int groupId;
    private long accessHash;
    private String title;
    private ObsoleteAvatar avatar;
    private int creatorId;
    private List<ObsoleteGroupMember> members;
    private boolean isMember;

    public ObsoleteGroup(byte[] data) throws IOException {
        load(data);
    }

    public ObsoleteGroup(BserValues values) throws IOException {
        parse(values);
    }

    public ApiGroup toApiGroup() {
        List<ApiMember> members = new ArrayList<ApiMember>();
        for (ObsoleteGroupMember member : this.members) {
            members.add(new ApiMember(member.getUid(), member.getInviterUid(), member.getInviteDate(), null));
        }

        return new ApiGroup(
                groupId,
                accessHash,
                title,
                avatar != null ? avatar.toApiAvatar() : null,
                isMember,
                creatorId,
                members,
                0/*In old Layout doesn't contain group creation date*/,
                null, null, null, null, null, null, null, null);
    }

    public int getGroupId() {
        return groupId;
    }

    public long getAccessHash() {
        return accessHash;
    }

    public String getTitle() {
        return title;
    }

    public ObsoleteAvatar getAvatar() {
        return avatar;
    }

    public int getCreatorId() {
        return creatorId;
    }

    public List<ObsoleteGroupMember> getMembers() {
        return members;
    }

    public boolean isMember() {
        return isMember;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        groupId = values.getInt(1);
        accessHash = values.getLong(2);
        title = values.getString(3);
        if (values.optBytes(4) != null) {
            avatar = new ObsoleteAvatar(values.getBytes(4));
        }
        creatorId = values.getInt(5);
        isMember = values.getBool(7);

        int count = values.getRepeatedCount(6);
        members = new ArrayList<ObsoleteGroupMember>();
        if (count > 0) {
            List<byte[]> raw = values.getRepeatedBytes(6);
            for (int i = 0; i < count; i++) {
                members.add(new ObsoleteGroupMember(raw.get(i)));
            }
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        throw new UnsupportedOperationException();
    }
}
