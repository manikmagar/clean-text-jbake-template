<%include 'common_header.gsp'%>


	<%published_posts.each {post ->%>
		<div class="post-preview">
			<a href="${post.uri}" class="plain post-title">
				${post.title}
			</a>
			<p class="post-meta">Published on ${post.date.format("dd MMMM yyyy")}</p>
			<p class="post-content"> <% if (post.summary) {%> ${post.summary}
						<% } else {%>
					<% print post.body.length() > 100 ? post.body[0..100] : post.body } %>
					...<span class="read-more"><a href="${post.uri}">Read More</a></span>
			</p>
			<hr/>
		</div>
		<%}%>


		<!-- Pager -->
    <ul class="pager">
        <li class="next">
            <a href="/${config.archive_file}" class="plain">Older Posts &rarr;</a>
        </li>
    </ul>

<%include "footer.gsp"%>
