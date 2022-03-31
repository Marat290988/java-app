CREATE TABLE user_subscription (
    channel_id NUMBER NOT NULL REFERENCES SWUSR,
    subscriber_id NUMBER NOT NULL REFERENCES SWUSR,
    primary key (channel_id, subscriber_id)
);