package uk.gov.hmcts.reform.divorce.caseprogression.draftsapi;

import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import uk.gov.hmcts.reform.divorce.caseprogression.BaseIntegrationTest;

import java.util.HashMap;
import java.util.Map;


public abstract class DraftBaseIntegrationTest extends BaseIntegrationTest {

    @Value("${drafts.api.url}")
    protected String draftsApiUrl;

    protected Response deleteDivorceDraft() {
        return SerenityRest.given()
                .headers(headers())
                .when()
                .delete(draftsApiUrl)
                .andReturn();
    }

    protected Response saveDivorceDraft(String draft) {
        return SerenityRest.given()
                .headers(headers())
                .body(draft)
                .when()
                .put(draftsApiUrl)
                .andReturn();
    }

    protected Response getDivorceDraft() {
        return SerenityRest.given()
                .headers(headers())
                .when()
                .get(draftsApiUrl)
                .andReturn();
    }

    protected Map<String, Object> headers() {
        return headers(getIdamTestUser());
    }

    protected Map<String, Object> headers(String token) {
        Map<String, Object> headers = new HashMap<>();
        headers.put("Content-type", MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.put("Authorization", token);
        return headers;
    }
}
