SELECT sv.group_id,
    s.id,
    sv.start_message_id,
    sv.end_message_id,
    s.summary_title,
    st.`text` AS summary_text,
    rm.rtc_message_id,
    rm.message
FROM summary s
    LEFT JOIN summary_version sv ON sv.id = s.summary_version_id
    LEFT JOIN summarized_text st ON st.summary_id = s.id
    LEFT JOIN rtc_message sm ON sm.rtc_message_id = sv.start_message_id
    LEFT JOIN rtc_message em ON em.rtc_message_id = sv.end_message_id
    LEFT JOIN rtc_message rm ON rm.ref_id = sv.group_id
    AND rm.saved_at >= sm.saved_at
    AND rm.saved_at <= em.saved_at 
    WHERE rm.ref_id IN (
    	'8f9fe4f4199e415c9daef30d3d6edd9d',
        '4f94cd958bd74944b36d9c03b911251d'
    )